<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use\App\LapkeuanganDkm;

use Illuminate\Support\Facades\Auth;

class KeuanganDkamController extends Controller
{

    //memberikan auntetifikasi pada admin dan user
    public function __construct()
    {
        $this->middleware('jwt.auth')->except(['index','show']);
        $this->middleware('role:1')->only(['store', 'update', 'destroy']);
    }

     public function store (Request $request)
    {
    	//buat validasi jika bukan admin maka langsung out dari program
    	// if(Auth::user()->id_role != 1){
    	// 	return response() ->json(['status'=> 0, 'message'=>'anda bukan admin']);
    	// }

    	$this->validate($request, [
    		'judul_laporan' => 'required',
    		'tanggal' => 'required',
    		'transaksi' => 'required',
    		'keterangan' => 'required',
    		'nilai' => 'required',

    	]);

    	$dkm_keuangan = LapkeuanganDkm::create([

    		'judul_laporan' => $request->judul_laporan,
    		'tanggal' => $request->tanggal,
    		'transaksi' => $request->transaksi,
    		'keterangan' => $request->keterangan,
    		'nilai' => $request->nilai,
    		 'id_user' => Auth::user()->id,

    	]);

    	return response()->json(['status'=> 1, 'message'=>'berhasil create laporan keuangan DKM']);
    	
    }

    //get data
    public function index()
    {   
        //$dkm_keuangan = Lapkeuangan::orderBy('tanggal','desc')->paginate(10);
        $dkm_keuangan = LapkeuanganDkm::paginate(10);
        return $dkm_keuangan;
    }

    //get data berdasarkan id
    public function show(LapkeuanganDkm $dkm_keuangan)
    {
        return $dkm_keuangan;
    }

    //edit data keuangan
    public function update(Request $request, LapkeuanganDkm $dkm_keuangan)
    {
        $dkm_keuangan->update($request->all());

        return response()->json(['status'=>1, 'message'=>'berhasil edit keuangan']);
    }

    public function destroy(LapkeuanganDkm $dkm_keuangan)
    {
        $dkm_keuangan->delete();

        return response()->json(['status'=>1, 'message'=>'berhasil hapus data']);
    }

}
