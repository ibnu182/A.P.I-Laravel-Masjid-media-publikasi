<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class agenda_formalin extends Model
{
    protected $table='agenda_formalin';
	
     protected $fillable = [
        'judul_agenda', 'tanggal', 'jam', 'deskripsi', 'tempat_agenda', 
        'slug', 'foto_acara', 'status_acara', 
        'id_user'
    ];

    public  function user()
    {
    	return $this->belongTo('App\User');
    }
}
