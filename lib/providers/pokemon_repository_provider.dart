import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_riverpod_app/providers/network_provider.dart';
import 'package:pokemon_riverpod_app/repositories/pokemon_repository_impl.dart';

final providerPokemonRepository = NotifierProvider<PokemonRepositoryProvider, PokemonRepositoryImpl>(
  name: 'PokemonREpository',
  PokemonRepositoryProvider.new,
);

class PokemonRepositoryProvider extends Notifier<PokemonRepositoryImpl> {
  @override
  PokemonRepositoryImpl build() {
    final dio = ref.watch(networkProvider);
    return PokemonRepositoryImpl(dio: dio);
  }
  
}