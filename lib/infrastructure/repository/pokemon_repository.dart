import 'package:dio/dio.dart';
import 'package:pokedex_flutter/domain/pokemon_list_domain.dart';

class PokemonRepository {
  Future<PokemonList> getPokemonList() async {
    var response = await Dio().get('https://pokeapi.co/api/v2/pokemon');
    return PokemonList.fromJson(response.data);
  }
}
