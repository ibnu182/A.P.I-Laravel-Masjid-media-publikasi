<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AgendaDkm extends Model
{
    protected $table='agenda_dkm';
	
     protected $fillable = [
        'judul_agenda', 'tanggal', 'jam', 'deskripsi', 'tempat_agenda', 
        'slug', 'foto_agenda', 'status_agenda', 
        'id_user'
    ];

    public  function user()
    {
    	return $this->belongTo('App\User');
    }
}
