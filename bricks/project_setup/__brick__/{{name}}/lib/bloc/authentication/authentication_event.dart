part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {
  const AuthenticationEvent();

  List<Object> get props => [];
}

class SigninUser extends AuthenticationEvent {
  final String email;
  final String password;

  const SigninUser({required this.email, required this.password});
  @override
  List<Object> get props => [email, password];
}
