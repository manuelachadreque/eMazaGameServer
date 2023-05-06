<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use App\Traits\HelperTrait;
use Illuminate\Http\Request;

class SubjectController extends Controller
{

    use HelperTrait;

    public function show(Request $request, Subject $subject ){

        return response()->json(['error'=> ' Do momento, nao e possivel mostrar detalhes de uma pergunta!'], status:403
    );
    }

    public function index(Request $request , Subject $subject){

        return $this->ProcessSubjects($request);
    }

    public function store(Request $request , Subject $subject){

        return response()->json(['error'=> ' Do momento, nao e possivel adicionar a disciplina!'], status:403
    );
    }

    public function update(Request $request, Subject $subject){

        return response()->json(['error'=> ' Do momento, nao e possivel atualizar a disciplina!'], status:403
    );
    }

    public function destroy(Request $request, Subject $subject){

        return response()->json(['error'=> ' Do momento, nao e possivel remover a discipina!'], status:403
    );
    }
}
