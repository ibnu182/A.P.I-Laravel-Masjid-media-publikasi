<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{
    protected $table='agendas';

    protected $fillable = [
    	'judul_agenda', 'tanggal', 'jam', 'deskripsi', 'tempat_agenda', 
        'foto_agenda', 'status_agenda', 
        'id_user'
    ];

    public function user()
    {
    	return $this->belongTo('App\User');
    }
}
