<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

use JWTAuth;

use Tymon\JWTAuth\Exception\JWTException;

class AuthController extends Controller
{
    //

    public function Register(Request $request)
    {
    	$nama = $request->nama;
    	$email = $request->email;
    	$password = bcrypt($request->password);
    	$alamat = $request->alamat;
    	$no_hp = $request->no_hp;
    	$id_role = $request->id_role;

    	User::create([
    		"name" => $nama,
    		"email" => $email,
    		"password" => $password,
    		"alamat" => $alamat,
    		"no_hp" => $no_hp,
    		"id_role" => $id_role
    	]);

    	return response()->json(["status"=>"1","message"=>"berhasil Register"]);
    	//return 1;

    }

    public function signin(Request $request)
    {

        $this->validate($request, [
            'name' => 'required', 'password' => 'required',

        ]);

        // grab credentials from the request
        $credentials = $request->only('name', 'password');

         try {
            // attempt to verify the credentials and create a token for the user
            if (! $token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 401);
            }
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        // all good so return the token
        return response()->json(compact('token'));
    }
}
