// event
class AuthEvent {}

class SignupEvent extends AuthEvent {
  final String email;
  final String password;
  final String nickName;
  SignupEvent(
      {required this.email, required this.password, required this.nickName});
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  LoginEvent({required this.email, required this.password});
}
