<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKeuangandkmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keuangandkm', function (Blueprint $table) {
            $table->increments('id');
             $table->string('judul_laporan');
            $table->date('tanggal');
            $table->string('transaksi');
            $table->text('keterangan');
            $table->string('nilai');

            $table->integer('id_user')->unsigned();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('keuangandkm');
    }
}
