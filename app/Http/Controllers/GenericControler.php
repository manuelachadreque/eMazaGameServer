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

        //dd(vars: 'generateToken', data: $request->all());


        //TODO Verificar se o user e administrator

        if (auth()->user()->hasRole('admin')){

            $user = User::find(auth()->id());
            $tokenName = $request-> name? $request->name : $user->name. '\'s Token';

            $token = $user->createToken($tokenName)->accessToken;


            return view('displayTokens', compact( 'token'));

            //$token = $user ->createToken($user->name . '\'s Token')->accessToken;


            //return redirect()->to(path:'/admin/oauth-access-tokens')->with(['token'=>$token]);




        }
        else
        {
            dd(vars:'Erro: nao tem permissao para gerar o Token ');
        }


    }
}
