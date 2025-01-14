<?php

namespace App\Http\Controllers;

use App\Models\Anggota; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator; // Tambahkan ini untuk Validator

class AnggotaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(Anggota::all(), 200); // Mengembalikan semua data anggota sebagai JSON
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validasi data
        $validator = Validator::make($request->all(), [
            'cif_debitur' => 'required|unique:anggota',
            'nama_lengkap' => 'required|string',
            'tanggal_lahir' => 'required|date',
            'tempat_lahir' => 'required|string',
            'jenis_kelamin' => 'required|string',
            'nama_ibu_kandung' => 'required|string|max:255',
            'status_perkawinan' => 'required|string',
            'no_ktp' => 'required|unique:anggota',
            'foto_ktp' => 'required|string',
            'profesi_sampingan' => 'nullable|string|max:255',
            'jumlah_tanggungan' => 'required|integer',
            'no_telepon' => 'required|string',
            'alamat' => 'required|string',
            'kode_pos' => 'required|string',
            'provinsi' => 'required|string',
            'kota_kabupaten' => 'required|string',
            'kecamatan' => 'required|string',
            'kelurahan' => 'required|string',
            'status_tempat_tinggal' => 'required|string',
            'lama_tinggal' => 'required|integer',
            'telepon' => 'nullable|string|max:15',
            'fax' => 'nullable|string|max:15',
            'nama_usaha' => 'nullable|string|max:255',
            'tanggal_mulai' => 'nullable|date',
            'jumlah_karyawan' => 'nullable|integer|min:0',
            'jarak_lokasi_usaha' => 'nullable|integer|min:0',
            'status_tempat_usaha' => 'nullable|string|max:255',
            'tanggal_berlaku_usaha' => 'nullable|date',
            'siup_no' => 'nullable|string|max:50',
            'alamat_usaha' => 'nullable|string|max:500',
            'kode_pos_usaha' => 'nullable|numeric|digits:5',
            'provinsi_usaha' => 'nullable|string|max:255',
            'kota_kabupaten_usaha' => 'nullable|string|max:255',
            'kecamatan_usaha' => 'nullable|string|max:255',
            'kelurahan_usaha' => 'nullable|string|max:255',
        ]);
        
        // Jika validasi gagal
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        
        try {
            // Cek jika ada foto_ktp dalam request dan simpan
            if ($request->has('foto_ktp')) {
                $image = $request->input('foto_ktp');
                $image = str_replace('data:image/png;base64,', '', $image); // Menghapus header base64
                $image = str_replace('data:image/jpeg;base64,', '', $image); // Untuk format jpeg
                $image = str_replace('data:image/jpg;base64,', '', $image); // Untuk format jpg
                
                $imageName = time() . '.png'; // Atau sesuaikan format berdasarkan jenis file
                \File::put(public_path('uploads/foto_ktp/') . $imageName, base64_decode($image));
                $request->merge(['foto_ktp' => 'uploads/foto_ktp/' . $imageName]);
            }
        
            // Simpan anggota baru
            $anggota = Anggota::create($request->all());
        
            return response()->json(['success' => true, 'data' => $anggota], 201);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    /**
     * Display the specified resource.
     */
    public function show(Anggota $anggota)
    {
        return response()->json($anggota, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Cari anggota berdasarkan ID
        $anggota = Anggota::find($id);

        if (!$anggota) {
            return response()->json(['error' => 'Anggota tidak ditemukan'], 404);
        }

        // Validasi data
        $validator = Validator::make($request->all(), [
            'cif_debitur' => 'required|unique:anggota',
            'nama_lengkap' => 'required|string',
            'tanggal_lahir' => 'required|date',
            'tempat_lahir' => 'required|string',
            'jenis_kelamin' => 'required|string',
            'nama_ibu_kandung' => 'required|string|max:255',
            'status_perkawinan' => 'required|string',
            'no_ktp' => 'required|unique:anggota',
            'foto_ktp' => 'required|string',
            'profesi_sampingan' => 'nullable|string|max:255',
            'jumlah_tanggungan' => 'required|integer',
            'no_telepon' => 'required|string',
            'alamat' => 'required|string',
            'kode_pos' => 'required|string',
            'provinsi' => 'required|string',
            'kota_kabupaten' => 'required|string',
            'kecamatan' => 'required|string',
            'kelurahan' => 'required|string',
            'status_tempat_tinggal' => 'required|string',
            'lama_tinggal' => 'required|integer',
            'telepon' => 'nullable|string|max:15',
            'fax' => 'nullable|string|max:15',
            'nama_usaha' => 'nullable|string|max:255',
            'tanggal_mulai' => 'nullable|date',
            'jumlah_karyawan' => 'nullable|integer|min:0',
            'jarak_lokasi_usaha' => 'nullable|integer|min:0',
            'status_tempat_usaha' => 'nullable|string|max:255',
            'tanggal_berlaku_usaha' => 'nullable|date',
            'siup_no' => 'nullable|string|max:50',
            'alamat_usaha' => 'nullable|string|max:500',
            'kode_pos_usaha' => 'nullable|numeric|digits:5',
            'provinsi_usaha' => 'nullable|string|max:255',
            'kota_kabupaten_usaha' => 'nullable|string|max:255',
            'kecamatan_usaha' => 'nullable|string|max:255',
            'kelurahan_usaha' => 'nullable|string|max:255',
        ]);

        // Jika validasi gagal
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Update data anggota
        $anggota->update($request->all());

        return response()->json(['message' => 'Anggota updated successfully', 'data' => $anggota], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $anggota = Anggota::find($id);

        if (!$anggota) {
            return response()->json(['message' => 'Anggota not found'], 404);
        }

        $anggota->delete();

        return response()->json(['message' => 'Anggota deleted successfully'], 200);
    }
}
