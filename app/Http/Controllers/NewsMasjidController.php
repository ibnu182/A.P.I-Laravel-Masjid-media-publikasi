<?php

namespace App\Http\Controllers;

use App\NewsMasjid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NewsMasjidController extends Controller
{
    //memberikan auntitfikasi user dan admin
	public function __construct()
	{
		$this->middleware('jwt.auth')->except(['index','show']);
		$this->middleware('role:1')->only(['store', 'update', 'destroy']);
	}

    //get semua data
    public function index()
    {
    	$news_masjid = NewsMasjid::paginate(10);

    	return $news_masjid;
    }

    //get data berdasarkan id
    public function show(NewsMasjid $news_masjid)
    {
    	return $news_masjid;
    }

    //menyimpan data baru
    public function store(Request $request)
    {
    	$this->validate($request,[
    		'judul_news' => 'required',
    		'tanggal' => 'required',
    		'deskripsi' => 'required',
    		'foto_news' => 'required',
    	]);

    	$news_masjid = NewsMasjid::create([
    		'judul_news' => $request->judul_news,
    		'tanggal' => $request->tanggal,
    		'deskripsi' => $request->deskripsi,

    		'slug' => str_slug($request->judul_news),
    		'id_user'=>Auth::user()->id,
    	]);	

    	// Uplaod Foto
    	$this->uploadFoto($request->foto_news, $news_masjid->id);

    	// nambah foto
    	$news_masjid->update([
    		'foto_news' => $news_masjid->id .'.jpg',
    	]);

    	
    	return response(['status'=>1, 'message'=>'berhasil create news']);	
    }

    //fungsi upload foto
    public function uploadFoto($data_foto, $id_news)
    {
    	$data_foto = base64_decode($data_foto);
    	$path_foto = 'images/news/' . $id_news .'.jpg';

    	file_put_contents($path_foto, $data_foto);

    }

    //untuk update data
    public function update(Request $request, NewsMasjid $news_masjid)
    {
    	$this->validate($request,[
    		'judul_news'=>'required',
    		'tanggal'=>'required',
    		'deskripsi'=>'required'
    	]);

    	$news_masjid->update($request->all());

    	return response(['status'=>1, 'message'=>'berhasil update']);
    }

    //hapus data
    public function destroy(NewsMasjid $news_masjid)
    {
    	$news_masjid->delete();

    	return response(['status'=>1, 'message'=>'behasil delete']);
    }
}
