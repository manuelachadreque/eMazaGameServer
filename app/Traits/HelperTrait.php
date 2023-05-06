<?php

namespace App\Traits;

use App\Models\Question;
use App\Models\Subject;
use Illuminate\Http\Request;

trait HelperTrait
{
    public function ProcessSubjects(Request $request){


        $orderDirection = $request->query(key:'direction',default:'desc');

        $orderColumn = $request->query(key:'column',default:'id');

        $totalPerPege = $request->query(key:'per_page',default:'3');


        $subjects = Subject::orderBy($orderColumn,$orderDirection)->paginate($totalPerPege);


        return response()->json([$subjects], status:200
        );
    }

    public function ProcessQuestions(Request $request){


        $orderDirection = $request->query(key:'direction',default:'desc');

        $orderColumn = $request->query(key:'column',default:'id');

        $totalPerPege = $request->query(key:'per_page',default:'3');


        $questions = Question::orderBy($orderColumn,$orderDirection)->paginate($totalPerPege);


        return response()->json([$questions], status:200
        );
    }
}
