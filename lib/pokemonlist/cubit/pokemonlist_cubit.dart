import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_flutter/infrastructure/repository/pokemon_repository.dart';
import 'package:pokedex_flutter/pokemonlist/cubit/events/pokemonlist_event.dart';

class PokemonListCubit extends Cubit<PokemonListEvent> {
  PokemonListCubit() : super(PokemonListLoadingEvent());

  void listPokemons() async {
    emit(PokemonListLoadingEvent());

    var pokemons = await PokemonRepository().getPokemonList();
    emit(PokemonListSucessEvent(pokemonList: pokemons));
  }
}
