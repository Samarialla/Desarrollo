<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function get_all(Request $request){
        $user = DB::table('users')->paginate(15);
        return response()->json($user); 
   }


 

  public function update(Request $request){

    // inserta los datos
    DB::table('users')->where('id',$request->input('id'))->
    update([
      'name' => $request->input('name'),
      'email' => $request->input('email'),
      'telefono' => $request->input('telefono'),
      'sexo' => $request->input('sexo'),
      'fecha_nac' => $request->input('fecha_nac'),
    ]);

    // respesta de JSON
    $response['message'] = "Actualizo exitosamente";
    $response['success'] = true;

    return $response;

  }
}
