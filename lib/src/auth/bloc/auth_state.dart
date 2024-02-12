class AuthState {}

class InitAuthState extends AuthState {
  InitAuthState();
}

class LoadingAuthState extends AuthState {
  LoadingAuthState();
}

class LoadedAuthStatae extends AuthState {
  LoadedAuthStatae();
}

class ErrorAuthState extends AuthState {
  final String errorMessag;
  ErrorAuthState({required this.errorMessag});
}
