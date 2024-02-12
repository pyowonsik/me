import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:me/src/auth/bloc/auth_event.dart';
import 'package:me/src/auth/bloc/auth_state.dart';
import 'package:me/src/auth/repository/auth_repository.dart';

// part 'auth_bloc.freezed.dart';
// part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final FlutterSecureStorage storage;
  AuthBloc({required this.authRepository, required this.storage})
      : super(InitAuthState()) {
    on<SignupEvent>((event, emit) async {
      final resp = await authRepository.signup(
          email: event.email,
          password: event.password,
          nickName: event.nickName);
    });
    on<LoginEvent>((event, emit) async {
      LoadingAuthState();
      final resp = await authRepository.login(
          email: event.email, password: event.password);
      storage.write(key: 'ACCESS_TOKEN', value: resp.accessToken);
      storage.write(key: 'REFRESH_TOKEN', value: resp.refreshToken);
    });
  }
}
