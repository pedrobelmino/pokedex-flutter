import 'package:flutter/material.dart';
import 'package:pokedex_flutter/pokemonlist/view/pass_arguments_screen.dart';
import 'package:pokedex_flutter/pokemonlist/view/screen_arguments.dart';

import 'pokemonlist/view/pokemonlist_page.dart';

class PokedexApp extends StatelessWidget {
  const PokedexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with Arguments',
      home: const PokemonListPage(title: "Pokedex"),
    );
  }
}
