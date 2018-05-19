<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgendaDkmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agenda_dkm', function (Blueprint $table) {
            $table->increments('id');
            $table->string('judul_agenda');
            $table->date('tanggal');
            $table->string('jam');
            $table->text('deskripsi');
            $table->string('tempat_agenda');

            $table->string('slug')->unique();
            $table->string('foto_agenda')->nullable();
            $table->string('status_agenda');

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
        Schema::dropIfExists('agenda_dkm');
    }
}
