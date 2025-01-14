<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    // Mengambil data profil pengguna yang sedang login
    public function getProfile(Request $request)
    {
        $user = Auth::user();
    
        if (!$user) {
            \Log::info('User not found.'); // Tambahkan log
            return response()->json(['message' => 'User not found'], 404);
        }
    
        return response()->json([
            'profile' => [
                'name' => $user->name,
                'email' => $user->email,
                'posisi' => $user->posisi,
                'no_telepon' => $user->no_telepon,
            ]
        ], 200);
    }

    // Memperbarui data profil pengguna
    public function updateProfile(Request $request)
{
    // Validasi data yang diterima, tanpa memerlukan email
    $validatedData = $request->validate([
        'name' => 'required|string|max:255',
        'posisi' => 'required|string|max:255', // Validasi untuk posisi
        'no_telepon' => 'required|string|max:15', // Validasi untuk no telepon
        'password' => 'nullable|string|min:6|confirmed', // Pastikan jika password tidak kosong
    ]);

    // Ambil pengguna yang sedang login berdasarkan email yang sedang digunakan
    $user = Auth::user();

    // Jika user tidak ditemukan, kembalikan respons error
    if (!$user) {
        return response()->json(['message' => 'User not found'], 404);
    }

    // Update data pengguna
    $user->name = $validatedData['name'];
    $user->posisi = $validatedData['posisi']; // Update posisi
    $user->no_telepon = $validatedData['no_telepon']; // Update no telepon

    // Jika password diisi, maka update password
    if (!empty($validatedData['password'])) {
        $user->password = Hash::make($validatedData['password']); // Pastikan password di-hash
    }

    // Simpan perubahan
    $user->save();

    // Kembalikan respons sukses
    return response()->json(['message' => 'Profile updated successfully.'], 200);
}

}
