@extends('layouts.app')

@section('content')
<main class="cm-hero">
    <div class="jumbotron jumbotron-fluid m-0 cm-hero__jumbotron cm-hero__jumbotron--fh">
        <div class="container text-center my-5">
            <h1 class="display-3 mb-5">Card Game</h1>
            <p class="lead mb-3">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
            <a href="{{ route('decks.create') }}" class="btn btn-primary m-3">Créez votre Deck</a>
            <a href="{{ route('register') }}" class="btn btn-outline-primary m-3">Inscrivez vous</a>
        </div>
    </div>
</main>
@endsection
