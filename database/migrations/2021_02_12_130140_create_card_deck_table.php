<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCardDeckTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('card_deck', function (Blueprint $table) {
            $table->bigInteger('card_id')->unsigned();
            $table->bigInteger('deck_id')->unsigned();
        });

        Schema::table('card_deck', function (Blueprint $table) {
            $table->foreign('card_id')->references('id')->on('cards')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('deck_id')->references('id')->on('decks')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('card_deck');
    }
}
