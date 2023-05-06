<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class GenericControler extends Controller
{
    public function landing(Request $request){
        return view(view: 'landing');

    }

    public function generateToken(Request $request){

        //TODO Verificar se o user e administrator

        if (auth()->user()->hasRole('admin')){

            $user = User::find(auth()->id());

            $token = $user ->createToken($user->name . '\'s Token')->accessToken;

            dd($token);



        }
        else
        {
            dd(vars:'Erro: nao tem permissao para gerar o Token ');
        }


    }
}
