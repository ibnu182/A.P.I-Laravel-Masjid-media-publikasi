<?php

namespace App\Http\Controllers;

use App\Agenda;
use Auth;
use Illuminate\Http\Request;


class AgendaController extends Controller
{
	public function __construct()		
	{
		$this->middleware('jwt.auth')->except(['index', 'show']);
		$this->middleware('role:1')->only(['store', 'update', 'destroy']);
	}

    public function store(Request $request)
    {
    	$this->validate($request, [
    		'judul_agenda'=>'required',
    		'tanggal'=>'required',
    		'jam'=>'required',
    		'status_agenda'=>'required',
    		'deskripsi'=>'required',
    		'tempat_agenda'=>'required',
            'foto_agenda'=>'required',
    	]);

    	$agendas= Agenda::create([

    		'judul_agenda'=>$request->judul_agenda,
    		'tanggal'=>$request->tanggal,
    		'jam'=>$request->jam,
    		'status_agenda'=>$request->status_agenda,
    		'deskripsi'=>$request->deskripsi,
    		'tempat_agenda'=>$request->tempat_agenda,
    		'id_user'=>Auth::user()->id,

    	]);

    	//upload gambar
    	$this->uploadFoto($request->foto_agenda, $agendas->id);

    	$agendas->update([
    		'foto_agenda'=>$agendas->id . '.jpg',
    	]);

    	return response()->json(['status'=>1, 'message'=>'berhasil create Agenda']);

    }

    //fungsi upload gambar
    	public function uploadFoto($data_foto, $id_agenda)
    	{
    		$data_foto = base64_decode($data_foto);
    		$path_foto = 'images/Agenda/' . $id_agenda . '.jpg';

    		file_put_contents($path_foto, $data_foto);
    	}

    	//ambil data acara
    	public function index()
    	{
    		$agendas = Agenda::paginate(10);
    		return $agendas;
    	}

    	//edit agenda
    	public function update(Request $request, Agenda $agendas)
    	{	
    		$this->validate($request,[
    			'judul_agenda'=>'required',
    			'tanggal'=>'required',
    			'jam'=>'required',
    			'status_agenda'=>'required',
    			'deskripsi'=>'required',
    			'tempat_agenda'=>'required',
    		]);

    		$agendas->update($request->all());

    		return response()->json(['status'=> 1,'message'=>'berhasil edit data']);
    	}

    	//ambil data berdasarkan id
    	public function show(Agenda $agendas)
    	{
    		//dd($agendas);
    		//$agendas = Agenda::find($id);
    		return $agendas;
    	}

    	//delete data
    	public function destroy(Agenda $agendas)
    	{
    		$agendas->delete();

    		return response()->json(['status'=> 1, 'message'=>'berhasil delete data']);
    	}
}
