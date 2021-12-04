import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:pokedex_flutter/pokedex_app.dart';
import 'package:pokedex_flutter/pokedex_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const PokedexApp()),
    blocObserver: PokedexObserver(),
  );
}
