

import 'dart:developer';
import 'dart:html';

import 'package:dio/dio.dart';
import "package:dw_babershop/src/core/exceptions/auth_exception.dart";
import 'user_respository.dart';

import '../../core/fp/either.dart';
import '../../core/restClient/rest_client.dart';

class UserRepositoryImpl implements UserRepository {
  final RestClient restClient;

  UserRepositoryImpl({
    required this.restClient
  });
  
  
  
  @override
  Future<Either<AuthException, String>> login(String email, String password) async {

    try {
  final Response(:data) = await restClient.unAuth.post('/auth', data: {
    'email': email,
    'password': password,
  });
  
  return Sucess(data['access_token']);
} on DioException catch (e, s) {
  if (e.response != null){
    final Response(:statusCode) = e.response!;
    if (statusCode == HttpStatus.forbidden){
      log('Login ou Senha invalidos', error: e, stackTrace: s);
      return Failure(AuthUnauthorizedException());
    }
  }
  log('Erro ao realizar login', error: e, stackTrace: s);
  return Failure(AuthError(message: 'Erro ao realizar login'));
}
  }
}