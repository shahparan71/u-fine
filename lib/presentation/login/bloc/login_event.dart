part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserAlreadyLoggedIn extends LoginEvent {}

class LoginButtonClick extends LoginEvent {}

class LanguageChange extends LoginEvent {
  final String lang;

  LanguageChange(this.lang);
}
