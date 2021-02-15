@extends('layouts.app')

@section('content')
<div id="app">
    <builder-component :cards-data="{{$cards}}" :method-is-put="true" action="{{ route('decks.update', $deck->id) }}" />
</div>
@endsection
