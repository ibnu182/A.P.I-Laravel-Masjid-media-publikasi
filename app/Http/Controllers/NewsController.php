<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use\App\News;

use Auth;

class NewsController extends Controller
{
	public function create(Request $request)
	{
		//buat validasi jika bukan admin maka langsung out dari program
    if (Auth::user()->id_role !=1) {
    	return response()->json(['statis'=> 0, 'message'=>'anda bukan admin']);
    	# code...
    }

    $this->validate($request, [
    		'judul_news' => 'required',
    		'tanggal' => 'required',
    		'deskripsi' => 'required',
    		


    	]);

    $newss = News::create([
    		
    		'judul_news' => $request->judul_news,
    		'tanggal' => $request->tanggal,
    		'deskripsi' => $request->deskripsi,
    		
    		 'slug' => str_slug ($request->judul_news),
    		 'id_user' => Auth::user()->id,


    	]);

    	return response()->json(['status'=> 1, 'message'=>'berhasil create news']);

	}
	//ngambil data news
	public function getNews()
	{
		$news_masjid = News::paginate(10);
		return $news_masjid;
	}

	//ambil acara per id
	 public function getNewsid($id)
    {
    	$news_masjid = News::find($id);

    	return $news_masjid;
    }


	//edit news
	public function editNews (Request $request, $id)
	{
		$news_masjid = News::find($id)->update(
				$request->all());

		return response()->json(['status'=> 1, 'message'=>'berhasil edit news']);
	}

	//hapus acara
    public function deleteNews(Request $request, $id)
    {
    	$news_masjid = News::find($id)->delete(
    			$request->all());

    	return response()->json(['status'=> 1, 'message'=>'berhasil delete news']);
    }


    

}
