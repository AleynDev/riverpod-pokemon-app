import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_riverpod_app/models/pokemon.dart';
import 'package:pokemon_riverpod_app/providers/pokemon_async_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(providerPokemonAsync);
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 750),
        child: pokemonAsync.when(
          data: (List<Pokemon> data) => ListView.builder(
            itemBuilder: (BuildContext context, int index) => ListTile(
              title: Text('id: ${data[index].id}',
                  style: const TextStyle(color: Colors.black)),
              subtitle: Text('nombre: ${data[index].name}'),
            ),
          ),
          error: (Object error, StackTrace stackTrace) => Text('Error $error'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
