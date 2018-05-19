<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Acara extends Model

{
	protected $table='acara';
	
     protected $fillable = [
        'judul_acara', 'tanggal', 'jam', 'deskripsi', 'tempat_acara', 
        'slug', 'foto_acara', 'status_acara', 
        'id_user'
    ];

    public  function user()
    {
    	return $this->belongTo('App\User');
    }

}
