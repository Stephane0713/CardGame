<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DeckController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('decks.index', [
            'pageTitle' => 'Vos Decks'
        ]);
    }

    public function show($id)
    {
        return view('decks.show', [
            'pageTitle' => 'Nom du Deck'
        ]);
    }

    public function create()
    {
        return view('decks.create', [
            'pageTitle' => 'Créer un Deck'
        ]);
    }

    public function edit($id)
    {
        return view('decks.edit', [
            'pageTitle' => 'Editer nom du Deck'
        ]);
    }
}
