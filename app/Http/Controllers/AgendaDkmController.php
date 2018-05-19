<?php

namespace App\Http\Controllers;

use App\AgendaDkm;
use Auth;
use Illuminate\Http\Request;

class AgendaDkmController extends Controller
{

    public function __construct()
    {
        $this->middleware('jwt.auth')->except(['index', 'show']);
        $this->middleware('role:1')->only(['store', 'update', 'destroy']);
    }
    
    //membuat function post
    public function store(Request $request)
    {
    	//buat validasi jika bukan admin maka langsung out dari program
    	//if (Auth::user()->id_role != 1) {
    		//return response()->json(['status'=> 0, 'message'=>'anda bukan admin']);
    	//}

    	 $this->validate($request, [
    		'judul_agenda' => 'required',
    		'tanggal' => 'required',
    		'jam' => 'required',
            'status_agenda' => 'required',
    		'deskripsi' => 'required',
    		'tempat_agenda' => 'required',

    	]);

    $agenda_dkm = AgendaDkm::create([
    		
    		'judul_agenda' => $request->judul_agenda,
    		'tanggal' => $request->tanggal,
    		'jam' => $request->jam,
            'status_agenda' => $request->status_agenda,
    		'deskripsi' => $request->deskripsi,
    		'tempat_agenda' => $request->tempat_agenda,
    		 'slug' => str_slug ($request->judul_agenda),
    		 'id_user' => Auth::user()->id,


    	]);

        //upload foto
    $this->uploadFoto($request->foto_agenda, $agenda_dkm->id);

    $agenda_dkm->update([
        'foto_agenda' => $agenda_dkm->id . '.jpg',
    ]);

    	return response()->json(['status'=> 1, 'message'=>'berhasil create Agenda']);

    }

    //fungsi upload foto
    public function uploadFoto($data_foto, $id_agenda)
    {
        $data_foto = base64_decode($data_foto);
        $path_foto = 'images/AgendaDkm/' . $id_agenda .'.jpg';

        file_put_contents($path_foto, $data_foto);
    }



    //ambil data acara
    public function index()
    {
    	$agenda_dkm = AgendaDkm::paginate(10);
    	return $agenda_dkm;
    }

    //edit agenda

    //  public function editAgenda(Request $request, $id)
    // {
    // 	//buat validasi jika bukan admin maka langsung out dari program
    // 	if(Auth::user()->id_role != 1){
    // 		return response()->json(['status'=> 0, 'message'=>'anda bukan admin']);
    // 	}

    // 	$agenda_dkm = AgendaDkm::find($id)->update(
    // 			$request->all());

    // 	return response()->json(['status'=> 1, 'message'=>'berhasil edit agenda']);
    // }

    //edit agenda
    public function update(Request $request, AgendaDkm $agenda_dkm)         
    {
        $this->validate($request,[
            'judul_agenda' => 'required',
            'tanggal' => 'required',
            'jam' => 'required',
            'deskripsi' => 'required',
            'tempat_agenda' => 'required',
        ]);

        return response()->json(['status'=> 1, 'message'=>'berhasil edit data']);
    }

    //delede agenda
     public function destroy(AgendaDkm $agenda_dkm)
    {
    	$agenda_dkm->delete();

    	return response()->json(['status'=> 1, 'message'=>'berhasil delete agenda']);
    }

    //ambil berdasarkan id
    public function show(AgendaDkm $agenda_dkm)
    {
    	return $agenda_dkm;
    }


   
}
