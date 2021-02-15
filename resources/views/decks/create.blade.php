@extends('layouts.app')

@section('content')
<div id="app">
    <builder-component action="{{ route('decks.index') }}" />
</div>
@endsection
