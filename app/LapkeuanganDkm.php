<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LapkeuanganDkm extends Model
{
    protected $table = 'dkm_keuangan';

    protected $fillable = [

    	'judul_laporan', 'tanggal', 'transaksi', 'keterangan', 'nilai' , 'id_user'

    ];

     public  function user()
    {
    	return $this->belongTo('App\User');
    }
}
