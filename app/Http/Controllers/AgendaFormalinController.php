<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use\App\agenda_formalin;
use Illuminate\Support\Facades\Auth;

class AgendaFormalinController extends Controller
{
    public function __construct()
    {
        $this->middleware('jwt.auth')->except(['index','show']);
        $this->middleware('role:1')->only(['store','update','destroy']);
    }

    public function store(Request $request)
    {
    	//buat validasi jika bukan admin maka langsung out dari program
    	// if(Auth::user()->id_role != 1){
    	// 	return response() ->json(['status'=> 0, 'message'=>'anda bukan admin']);
    	// }

    	$this->validate($request, [
    		'judul_agenda' => 'required',
    		'tanggal' => 'required',
    		'jam' => 'required',
    		'deskripsi' => 'required',
    		'tempat_agenda' => 'required',

    	]);

    	$agenda_formalin = agenda_formalin::create([

    		'judul_agenda' => $request->judul_agenda,
    		'tanggal' => $request->tanggal,
    		'jam' => $request->jam,
    		'deskripsi' => $request->deskripsi,
    		'tempat_agenda' => $request->tempat_agenda,
    		 'slug' => str_slug($request->judul_agenda),
    		 'id_user' => Auth::user()->id,

    	]);

    	return response()->json(['status'=> 1, 'message'=>'berhasil create agenda formalin']);
    }

    //mengambil data
    public function index()
    {
    	$agenda_formalin = agenda_formalin::paginate(10);
    	return $agenda_formalin;

    }

    

    //edit data
    public function update(Request $request, agenda_formalin $agenda_formalin)
    {
        $this->validate($request,[
            'judul_agenda'=>'required',
            'tanggal'=>'required',
            'jam'=>'required',
            'deskripsi'=>'required',
            'tempat_agenda'=>'required',
        ]);
        $agenda_formalin->update($request->all());
    	// $agenda_formalin = agenda_formalin::find($id)->update(
    	// 	$request->all());

    	return response()->json(['status'=> 1, 'message'=>'berhasil edit agenda']);
    }



    //delete data
    public function destroy(agenda_formalin $agenda_formalin)
    {
        $agenda_formalin->delete();
    	// $agenda_formalin = agenda_formalin::find($id)->delete(
    	// 	$request->all());

    	return response()->json(['status'=> 1, 'message'=>'berhasil delete agenda']);
    }



    //ambil data
    public function show(agenda_formalin $agenda_formalin)
    {
        //dd($agenda_dkm);
    	// $agenda_formalin = agenda_formalin::find($id);
    	return $agenda_formalin;
    }
}
