<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Deck;

class DeckController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function getUserId()
    {
        return Auth::user()->id;
    }

    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = $this->getUserId();
        $decks = Deck::where('user_id', $user)->get();

        return view('decks.index', [
            'pageTitle' => 'Vos Decks',
            'decks' => $decks
        ]);
    }

    public function show($id)
    {
        $deck = Deck::findOrFail($id);
        $cards = $deck->cards;
        return view('decks.show', [
            'pageTitle' => "Deck : $deck->id",
            'deck' => $deck,
            'cards' => $cards
        ]);
    }

    public function create()
    {
        return view('decks.create', [
            'pageTitle' => 'Créer un Deck'
        ]);
    }

    public function store()
    {
        $deck = new Deck;

        $deck->user_id = $this->getUserId();
        $deck->save();

        $cards = request('cards');
        $deck->cards()->attach($cards);


        return redirect('/decks');
    }

    public function edit($id)
    {
        $deck = Deck::findOrFail($id);

        $cards = $deck->cards;
        $cardsId = [];

        foreach ($cards as $card) {
            array_push($cardsId, $card->id);
        }

        return view('decks.edit', [
            'pageTitle' => "Editer Deck : $deck->id",
            'deck' => $deck,
            'cards' => $cardsId,
        ]);
    }

    public function update($id)
    {
        $user = $this->getUserId();
        $deck = Deck::where('id', $id)->where('user_id', $user)->first();
        $deck->save();

        $cards = request('cards');

        $deck->cards()->sync($cards);

        return redirect('/decks');
    }

    public function destroy($id)
    {
        $user = $this->getUserId();
        $deck = Deck::where('id', $id)->where('user_id', $user);

        $deck->delete();

        return redirect('/decks');
    }
}
