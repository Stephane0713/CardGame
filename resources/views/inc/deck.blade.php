<div class="card cm-deck">
    <img src="/assets/cat_01.jpg" alt="" class="card-img-top cm-deck__img">
    <div class="card-body">
        <h5 class="card-title m-0 text-center">Deck : {{$deck->id}}</h5>
    </div>
    <a href="{{ route('decks.show', $deck->id) }}" class="cm-deck__link">Consulter le deck</a>
</div>
