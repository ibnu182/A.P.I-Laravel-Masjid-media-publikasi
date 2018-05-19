<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use\App\Acara;

use Auth;

class AcaraController extends Controller
{
    public function __construct()
    {
        // Buat Middleware
        // Except (Kecuali)
        // ONly (hanya)
        $this->middleware('jwt.auth')->except(['index','show']);
        $this->middleware('role:1')->only(['store','update','destory']);
    }


    //ambil data acar
    public function index()
    {
        // $acara = Acara::latest()->pagiante(10);
        $acara = Acara::orderBy('tanggal','desc')->paginate(10);
        return $acara;
    }

    //ambil acara per id
    public function show(Acara $acara)
    {
        return $acara;
    }

    public function store(Request $request)
    {
    	$this->validate($request, [
    		'judul_acara' => 'required',
    		'tanggal' => 'required',
    		'jam' => 'required',
    		'deskripsi' => 'required',
    		'tempat_acara' => 'required',
    	]);

    	$acara = Acara::create([
    		'judul_acara' => $request->judul_acara,
    		'tanggal' => $request->tanggal,
    		'jam' => $request->jam,
    		'deskripsi' => $request->deskripsi,
    		'tempat_acara' => $request->tempat_acara,
    		'slug' => str_slug ($request->judul_acara),
    		'id_user' => Auth::user()->id,
    	]);

    	return response()->json(['status'=> 1, 'message'=>'berhasil create acara']);
    }


    //EDIT acara
    public function update(Request $request, Acara $acara)
    {
    	$acara->update($request->all());

    	return response()->json(['status'=> 1, 'message'=>'berhasil edit acara']);
    }


    //hapus acara
    public function destroy(Request $request, $id)
    {
    	$acara = Acara::find($id)->delete(
    			$request->all());

    	return response()->json(['status'=> 1, 'message'=>'berhasil delete acara']);
    }
}