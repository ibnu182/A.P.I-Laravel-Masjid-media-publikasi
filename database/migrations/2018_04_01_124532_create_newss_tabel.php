<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewssTabel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news_masjid', function (Blueprint $table) {
            $table->increments('id');
            $table->string('judul_news');
            $table->date('tanggal');
            $table->text('deskripsi');
            $table->string('slug')->unique();

            $table->string('foto_news')->nullable();
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
        Schema::dropIfExists('news_masjid');
    }
}
