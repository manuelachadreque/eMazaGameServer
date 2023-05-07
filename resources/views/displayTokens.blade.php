@extends('voyager::master')

@section('content')

    <div style="padding: 30px">
        <h1>Token Criado</h1>

        <div style="font-size: 16pt; color: red; font-weight:bold">
            <span>Atencao: este token sera mostrado uma unica vez, copie e conserve num lugar seguro!</span>

        </div>

        <div style="margin: 20px 0px;">
            <p>
                {{$token}}
            </p>
        </div>

    </div>

@endsection
