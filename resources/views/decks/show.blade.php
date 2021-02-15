@extends('layouts.app')

@section('content')
<div id="app">
    <div class="container">
        <a href="{{route('decks.edit', $deck->id)}}" class="btn btn-primary mb-3">Editer</a>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-danger mb-3" data-toggle="modal" data-target="#deleteModal">
            Supprimer
        </button>
        <div class="row">
            @foreach($cards as $card)
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 mb-3">
                <card-component :card-data="{{$card}}" />
            </div>
            @endforeach
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteModal">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Êtes-vous sur(e) de vouloir supprimer {{ $deck->id }}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                <form action="{{route('decks.destroy', $deck->id)}}" method="post">
                    @csrf
                    @method('DELETE')
                    <input type="submit" class="btn btn-danger" value="Supprimer">
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
