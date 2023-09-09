import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_riverpod_app/models/pokemon.dart';
import 'package:pokemon_riverpod_app/providers/pokemon_repository_provider.dart';

final providerPokemonAsync = AsyncNotifierProvider<PokemonAsyncNotifier, List<Pokemon>>(
  name: 'PokemonAsync',
  PokemonAsyncNotifier.new,
);

class PokemonAsyncNotifier extends AsyncNotifier<List<Pokemon>> {
  @override
  Future<List<Pokemon>> build() async {
    final pokemonRepository = ref.read(providerPokemonRepository);
    return await pokemonRepository.getPokemons();
  }
  
}