import 'package:flutter/material.dart';

import 'pokemonlist/view/pokemonlist_page.dart';

class PokedexApp extends MaterialApp {
  const PokedexApp({Key? key})
      : super(key: key, home: const PokemonListPage(title: "Pokedex"));
}
