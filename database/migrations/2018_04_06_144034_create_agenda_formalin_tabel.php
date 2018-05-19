<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgendaFormalinTabel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agenda_formalin', function (Blueprint $table) {
            $table->increments('id');
             $table->string('judul_agenda');
            $table->date('tanggal');
            $table->string('jam');
            $table->text('deskripsi');
            $table->string('tempat_agenda');

            $table->string('slug')->unique();
            $table->string('foto_agenda')->nullable();
            $table->string('status_agenda')->default(0);

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
        Schema::dropIfExists('agenda_formalin');
    }
}
