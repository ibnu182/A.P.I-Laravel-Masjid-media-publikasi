<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewsMasjid extends Model
{
     protected $table='news_masjid';
	
     protected $fillable = [
        'judul_news', 'tanggal', 'deskripsi', 
        'slug', 'foto_news',
        'id_user'
    ];

    public  function user()
    {
    	return $this->belongTo('App\User');
    }
}
