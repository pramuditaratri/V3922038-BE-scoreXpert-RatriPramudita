<?php


namespace App\Http\Controllers;

use App\Models\Anggota;
use App\Models\Pengajuan;
use App\Models\Riwayat;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class RiwayatController extends Controller
{
    public function calculateDTI(Request $request)
    {
        // Validasi input
        $validated = $request->validate([
            'no_ktp' => 'required|exists:anggota,no_ktp',
            'nama_lengkap' => 'required|exists:anggota,nama_lengkap',
        ]);

        // Cari anggota berdasarkan no KTP
        $anggota = Anggota::where('no_ktp', $validated['no_ktp'])
                             ->where('nama_lengkap', $validated['nama_lengkap'])
                             ->first();
        if (!$anggota) {
            return response()->json(['error' => 'Anggota dengan no KTP ini tidak ditemukan.'], 404);
        }

        // Cari pengajuan terbaru berdasarkan anggota
        $pengajuan = Pengajuan::where('anggota_id', $anggota->id)->latest()->first();

        if (!$pengajuan) {
            return response()->json(['error' => 'Tidak ada data pengajuan terkait anggota ini.'], 404);
        }

        // Perhitungan DTI
        $penghasilan = $pengajuan->penghasilan;
        $beban_pengeluaran_bulanan = $pengajuan->beban_pengeluaran_bulanan;
        $dti = ($beban_pengeluaran_bulanan / $penghasilan) * 100;

        // Tentukan status
        $status = $dti <= 35 ? 'Disetujui' : 'Ditolak';
        $catatan = $status === 'Ditolak' ? 'DTI terlalu tinggi' : null;

        // Simpan data ke tabel riwayat
        $riwayat = Riwayat::create([
            'anggota_id' => $anggota->id,
            'pengajuan_id' => $pengajuan->id,
            'dti' => $dti,
            'status' => $status,
            'catatan' => $catatan,
        ]);

        // Kembalikan respons JSON
        return response()->json($riwayat);
    }

    public function index()
    {
        // Mengambil semua data riwayat
        $riwayat = Riwayat::all();

        // Mengembalikan response JSON dengan data riwayat
        return response()->json($riwayat);
    }

    public function downloadPdf($id)
{
    // Cari riwayat berdasarkan ID
    $riwayat = Riwayat::with(['anggota', 'pengajuan'])->find($id);

    if (!$riwayat) {
        return response()->json(['error' => 'Data riwayat tidak ditemukan.'], 404);
    }

    // Data untuk PDF
    $data = [
        'nama_lengkap' => $riwayat->anggota->nama_lengkap,
        'no_ktp' => $riwayat->anggota->no_ktp,
        'penghasilan' => $riwayat->pengajuan->penghasilan,
        'beban_pengeluaran_bulanan' => $riwayat->pengajuan->beban_pengeluaran_bulanan,
        'dti' => $riwayat->dti,
        'status' => $riwayat->status,
        'catatan' => $riwayat->catatan,
    ];

    // Generate PDF
    $pdf = Pdf::loadView('riwayat.pdf', compact('data'));

    // Unduh PDF
    return $pdf->download('riwayat_dti_' . $riwayat->anggota->nama_lengkap . '.pdf');
}

}
