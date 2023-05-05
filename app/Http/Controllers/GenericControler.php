<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GenericControler extends Controller
{
    public function landing(Request $request){
        return view(view: 'landing');

    }
}
