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
        return view('decks.index');
    }

    public function show($id)
    {
        return view('decks.show');
    }

    public function create()
    {
        return view('decks.create');
    }

    public function edit($id)
    {
        return view('decks.edit');
    }
}
