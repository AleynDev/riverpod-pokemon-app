import 'package:dio/dio.dart';
import 'package:pokemon_riverpod_app/models/pokemon.dart';

class PokemonRepositoryImpl {
  final Dio dio;

  PokemonRepositoryImpl({
    required this.dio,
  });

  Future<List<Pokemon>> getPokemons() async {
    final response = await dio.get('pokemon?limit=1000&offset=0');
    switch( response.statusCode ) {
      case 200:
        final results = response.data['results'] as List<dynamic>;
        return results.map((pokemonJson) => Pokemon.fromJson(pokemonJson)).toList();
      default:
        return [];
    }
  }

}
