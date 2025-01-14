<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Anggota extends Model
{
    use HasFactory;

    protected $table = 'anggota';

    protected $fillable = [
        'cif_debitur',
        'nama_lengkap',
        'tanggal_lahir',
        'tempat_lahir',
        'jenis_kelamin',
        'nama_ibu_kandung',
        'status_perkawinan',
        'no_ktp',
        'foto_ktp',
        'tanggal_ktp_berlaku',
        'jumlah_tanggungan',
        'profesi_sampingan',
        'no_telepon',
        'alamat',
        'kode_pos',
        'provinsi',
        'kota_kabupaten',
        'kecamatan',
        'kelurahan',
        'telepon',
        'fax',
        'status_tempat_tinggal',
        'lama_tinggal',
        'nama_usaha',
        'tanggal_mulai',
        'jumlah_karyawan',
        'jarak_lokasi_usaha',
        'status_tempat_usaha',
        'tanggal_berlaku_usaha',
        'siup_no',
        'alamat_usaha',
        'kode_pos_usaha',
        'provinsi_usaha',
        'kota_kabupaten_usaha',
        'kecamatan_usaha',
        'kelurahan_usaha',
    ];
}
