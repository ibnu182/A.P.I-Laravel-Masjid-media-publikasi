<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAcaraTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acara', function (Blueprint $table) {
            $table->increments('id');
            $table->string('judul_acara');
            $table->date('tanggal');
            $table->string('jam');
            $table->text('deskripsi');
            $table->string('tempat_acara');

            $table->string('slug')->unique();
            $table->string('foto_acara')->nullable();
            $table->string('status_acara')->default(0);

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
        Schema::dropIfExists('acara');
    }
}
