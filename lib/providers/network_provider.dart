import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkProvider = NotifierProvider<NetworkController, Dio>(
  name: 'NetworkController',
  NetworkController.new,
);


class NetworkController extends Notifier<Dio> {
  @override
  Dio build() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://pokeapi.co/api/v2/',
      ),
    );
  }
  
}