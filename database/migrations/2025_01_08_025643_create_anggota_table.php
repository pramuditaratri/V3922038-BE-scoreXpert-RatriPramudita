<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnggotaTable extends Migration
{
    public function up()
{
    Schema::create('anggota', function (Blueprint $table) {
        $table->id();
        $table->string('cif_debitur')->unique();
        $table->string('nama_lengkap');
        $table->date('tanggal_lahir');
        $table->string('tempat_lahir');
        $table->string('jenis_kelamin');
        $table->string('nama_ibu_kandung');
        $table->string('status_perkawinan');
        $table->string('no_ktp')->unique();
        $table->longText('foto_ktp');  // jika hanya menyimpan URL atau path
        $table->date('tanggal_ktp_berlaku');
        $table->integer('jumlah_tanggungan');
        $table->string('profesi_sampingan');
        $table->string('no_telepon');
        $table->string('alamat');
        $table->string('kode_pos');
        $table->string('provinsi');
        $table->string('kota_kabupaten');
        $table->string('kecamatan');
        $table->string('kelurahan');
        $table->string('telepon');
        $table->string('fax');
        $table->string('status_tempat_tinggal');
        $table->integer('lama_tinggal');
        $table->string('nama_usaha');
        $table->date('tanggal_mulai');
        $table->integer('jumlah_karyawan');
        $table->integer('jarak_lokasi_usaha');
        $table->string('status_tempat_usaha');
        $table->date('tanggal_berlaku_usaha');
        $table->string('siup_no');
        $table->string('alamat_usaha');
        $table->string('kode_pos_usaha');
        $table->string('provinsi_usaha');
        $table->string('kota_kabupaten_usaha');
        $table->string('kecamatan_usaha');
        $table->string('kelurahan_usaha');
        $table->timestamps();
    });
}

    public function down()
    {
        Schema::dropIfExists('anggota');
    }
}