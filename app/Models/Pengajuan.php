<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengajuan extends Model
{
    use HasFactory;

    protected $table = 'pengajuan';

    protected $fillable = [
        'anggota_id', 
        'penghasilan', 
        'beban_pengeluaran_bulanan', 
        'agunan', 
        'besaran_kredit', 
        'alasan_kredit', 
        'jumlah_hutang', 
        'tanggal_pengajuan', 
        'tanggal_mulai', 
        'tanggal_selesai'
    ];

    // Relasi ke model Pemohon
    public function anggota()
    {
        return $this->belongsTo(Anggota::class, 'anggota_id');
    }
}

