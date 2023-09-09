

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_riverpod_app/screens/home_screen.dart';

void main() => runApp(const ProviderScope(child: PokemonApp()));

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pokemon App',
      home: HomeScreen(),
    );
  }

}