<?php

namespace App\Http\Controllers;

use App\Models\Pengajuan;
use Illuminate\Http\Request;
use App\Models\Anggota;
use Illuminate\Support\Facades\Validator;

class PengajuanController extends Controller
{
    // Menampilkan semua pengajuan dengan relasi anggota
    public function index()
    {
        $pengajuan = Pengajuan::with('anggota')->get();  // Gunakan relasi anggota
        return response()->json($pengajuan, 200);  // Status code 200 (OK)
    }

    // Mengambil daftar anggota untuk dropdown pengajuan
    public function create()
    {
        // Menampilkan hanya id dan no_ktp dari anggota
        $anggota = Anggota::all(['id', 'no_ktp']);
        return response()->json($anggota, 200);  // Mengembalikan data anggota untuk dropdown
    }

    // Menyimpan data pengajuan baru
    public function store(Request $request)
    {
        \Log::info('Request Data:', $request->all()); // Tambahkan log ini untuk debugging

        $validator = Validator::make($request->all(), [
            'anggota_id' => 'required|exists:anggota,id',  // Validasi anggota_id
            'penghasilan' => 'required|numeric|min:1000',
            'beban_pengeluaran_bulanan' => 'required|numeric|min:1000',
            'agunan' => 'required|numeric|min:1000',
            'besaran_kredit' => 'required|numeric|min:0',
            'alasan_kredit' => 'required',
            'jumlah_hutang' => 'required|numeric|min:0',
            'tanggal_pengajuan' => 'required|date',
            'tanggal_mulai' => 'required|date',
            'tanggal_selesai' => 'required|date|after_or_equal:tanggal_mulai',
        ]);

        if ($validator->fails()) {
            \Log::error('Validation Errors:', $validator->errors()->toArray()); // Log error validasi
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $pengajuan = Pengajuan::create($request->all());
            return response()->json($pengajuan, 201);  // Status 201: Created
        } catch (\Exception $e) {
            \Log::error('Exception:', ['message' => $e->getMessage()]); // Log exception
            return response()->json(['error' => 'Failed to create pengajuan: ' . $e->getMessage()], 500);
        }
    }

    // Memperbarui data pengajuan yang sudah ada
    public function update(Request $request, $id)
    {
        // Validasi input dari request
        $validator = Validator::make($request->all(), [
            'anggota_id' => 'required|exists:anggota,id',  // Validasi anggota_id
            'penghasilan' => 'required|numeric|min:1000',
            'beban_pengeluaran_bulanan' => 'required|numeric|min:1000',
            'agunan' => 'required|numeric|min:1000',
            'besaran_kredit' => 'required|numeric|min:0',
            'alasan_kredit' => 'required',
            'jumlah_hutang' => 'required|numeric|min:0',
            'tanggal_pengajuan' => 'required|date',
            'tanggal_mulai' => 'required|date',
            'tanggal_selesai' => 'required|date|after_or_equal:tanggal_mulai',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Cari pengajuan berdasarkan ID dan lakukan update
        try {
            $pengajuan = Pengajuan::findOrFail($id);
            $pengajuan->update($request->all());
            return response()->json($pengajuan, 200);  // Status 200: OK
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to update pengajuan: ' . $e->getMessage()], 500);  // Status 500: Internal Server Error
        }
    }

    // Menghapus data pengajuan
    public function destroy($id)
    {
        try {
            $pengajuan = Pengajuan::findOrFail($id);
            $pengajuan->delete();
            return response()->json(['message' => 'Pengajuan berhasil dihapus'], 200);  // Status 200: OK
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to delete pengajuan: ' . $e->getMessage()], 500);  // Status 500: Internal Server Error
        }
    }
}
