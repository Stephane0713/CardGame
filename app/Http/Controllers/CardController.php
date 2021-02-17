<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Card;

class CardController extends Controller
{
    public function get()
    {
        $search = request('search');
        $types = request('types');

        if (empty($types)) {
            $types = [null];
        }

        $cards = Card::where('name', 'like', '%' . $search . '%')->whereIn('type', $types)->get();

        return $cards;
    }

    public function setup()
    {
        $collection = [
            [
                'name' => 'Fauve roux',
                'energie' => '1',
                'picture' => 'cat_01',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.',
                'damage' => '10'
            ],
            [
                'name' => 'Albino, l\'enragé',
                'energie' => '2',
                'picture' => 'cat_02',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.',
                'damage' => '30'
            ],
            [
                'name' => 'Guerrière chiba',
                'energie' => '3',
                'picture' => 'dog_01',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.',
                'damage' => '30'
            ],
            [
                'name' => 'Croquette, l\'assoupie',
                'energie' => '1',
                'picture' => 'cat_03',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.',
                'damage' => '10'
            ],
            [
                'name' => 'Duo canin',
                'energie' => '2',
                'picture' => 'dog_02',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.',
                'damage' => '20'
            ],
            [
                'name' => 'Agent double',
                'energie' => '2',
                'picture' => 'dog_03',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.',
                'damage' => '10'
            ],
            [
                'name' => 'Regard de jade',
                'energie' => '1',
                'picture' => 'cat_04',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.',
                'damage' => '10'
            ],
            [
                'name' => 'Bête nocturne',
                'energie' => '2',
                'picture' => 'cat_05',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.',
                'damage' => '30'
            ],
            [
                'name' => 'Grise, chasseuse experte',
                'energie' => '3',
                'picture' => 'dog_04',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.',
                'damage' => '30'
            ],
            [
                'name' => 'Félin suspicieux',
                'energie' => '1',
                'picture' => 'cat_06',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.',
                'damage' => '10'
            ],
            [
                'name' => 'Garde boxer',
                'energie' => '2',
                'picture' => 'dog_05',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.',
                'damage' => '20'
            ],
            [
                'name' => 'Kenneth l\'érudit',
                'energie' => '2',
                'picture' => 'dog_06',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.',
                'damage' => '10'
            ],
            [
                'name' => 'Fuzzy, Maître du camouflage',
                'energie' => '1',
                'picture' => 'cat_07',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.',
                'damage' => '10'
            ],
            [
                'name' => 'Gardien rouge',
                'energie' => '2',
                'picture' => 'cat_08',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.',
                'damage' => '30'
            ],
            [
                'name' => 'Brutus, Limier infernal',
                'energie' => '3',
                'picture' => 'dog_07',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.',
                'damage' => '30'
            ],
            [
                'name' => 'Rudy l\'élégant',
                'energie' => '1',
                'picture' => 'cat_09',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.',
                'damage' => '10'
            ],
            [
                'name' => 'Bête abandonnée',
                'energie' => '2',
                'picture' => 'dog_08',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.',
                'damage' => '20'
            ],
            [
                'name' => 'Fauve géant',
                'energie' => '2',
                'picture' => 'dog_09',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.',
                'damage' => '10'
            ],
            [
                'name' => 'Grizou, Hérault du sommeil',
                'energie' => '1',
                'picture' => 'cat_10',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.',
                'damage' => '10'
            ],
            [
                'name' => 'Fauve brun',
                'energie' => '2',
                'picture' => 'cat_11',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.',
                'damage' => '30'
            ],
            [
                'name' => 'Antoinette, Noblesse incarnée',
                'energie' => '3',
                'picture' => 'dog_10',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.',
                'damage' => '30'
            ],
            [
                'name' => 'Oracle félin',
                'energie' => '1',
                'picture' => 'cat_12',
                'type' => 'cat',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.',
                'damage' => '10'
            ],
            [
                'name' => 'Bête flamboyante',
                'energie' => '2',
                'picture' => 'dog_11',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.',
                'damage' => '20'
            ],
            [
                'name' => 'Raton l\'imposteur',
                'energie' => '2',
                'picture' => 'dog_12',
                'type' => 'dog',
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.',
                'damage' => '10'
            ],
        ];

        foreach ($collection as $card) {
            $row = new Card;
            $row->name = $card['name'];
            $row->type = $card['type'];
            $row->image = $card['picture'];
            $row->cost = $card['energie'];
            $row->description = $card['description'];
            $row->score = $card['damage'];

            $row->save();
        }
        return redirect('/');
    }
}
