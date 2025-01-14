<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AnggotaController;
use App\Http\Controllers\PengajuanController;
use App\Http\Controllers\Api\ProfileController;
use App\Http\Controllers\RiwayatController;
use App\Models\Riwayat;

// Route untuk register dan login
Route::post('/auth/register', [AuthController::class, 'register']);
Route::post('/auth/login', [AuthController::class, 'login']);

// Route untuk anggota dan pengajuan (CRUD)
Route::resource('anggota', AnggotaController::class);
Route::apiResource('pengajuan', PengajuanController::class);

// Dummy route untuk menghindari error redirect
Route::get('/login', function () {
    return response()->json(['message' => 'Unauthenticated'], 401);
})->name('login');

// Route yang dilindungi oleh middleware 'auth:api' (menggunakan JWT)
Route::middleware('auth:api')->group(function () {
    Route::get('/profile', [ProfileController::class, 'getProfile']);
    Route::put('/profile/update', [ProfileController::class, 'updateProfile']);
    
    Route::post('/calculate-dti', [RiwayatController::class, 'calculateDTI']);
    Route::get('/riwayat', [RiwayatController::class, 'index']);
    Route::get('/riwayat/download-pdf/{id}', [RiwayatController::class, 'downloadPdf']);
});

