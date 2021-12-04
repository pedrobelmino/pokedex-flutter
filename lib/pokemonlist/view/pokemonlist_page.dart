import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_flutter/pokemonlist/cubit/pokemonlist_cubit.dart';
import 'package:pokedex_flutter/pokemonlist/view/pokemonlist_view.dart';

class PokemonListPage extends StatelessWidget {
  const PokemonListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PokemonListCubit(),
      child: PokemonListView(title: title),
    );
  }
}
