@extends('layouts.app')

@section('content')
<div class="container mb-4">
    <a href="{{ route('decks.create') }}" class="btn btn-primary mb-3">Créer un deck</a>
    <div class="row">
        @foreach($decks as $deck)
        <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-3">
            @include("inc.deck")
        </div>
        @endforeach
    </div>
</div>
@endsection
