import 'package:pokedex_flutter/domain/pokemon_list_domain.dart';

abstract class PokemonListEvent {}

class PokemonListLoadingEvent extends PokemonListEvent {}

class PokemonListSucessEvent extends PokemonListEvent {
  final PokemonList pokemonList;

  PokemonListSucessEvent({required this.pokemonList});
}
