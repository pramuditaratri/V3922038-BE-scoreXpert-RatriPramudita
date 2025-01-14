<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('pengajuan', function (Blueprint $table) {
            $table->id();
            $table->foreignId('anggota_id')->constrained('anggota'); // Relasi dengan anggota
            $table->decimal('penghasilan'); // Gunakan decimal untuk penghasilan
            $table->decimal('beban_pengeluaran_bulanan', ); // Gunakan decimal untuk pengeluaran bulanan
            $table->string('agunan'); // Agunan bisa menggunakan string, jika ada batasan panjang
            $table->decimal('besaran_kredit'); // Besaran kredit menggunakan decimal
            $table->text('alasan_kredit'); // Alasan kredit lebih baik menggunakan text
            $table->decimal('jumlah_hutang'); // Jumlah hutang menggunakan decimal
            $table->date('tanggal_pengajuan'); 
            $table->date('tanggal_mulai');
            $table->date('tanggal_selesai');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pengajuan');
    }
};