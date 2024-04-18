part of 'login_bloc.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.username = '',
    this.email = '',
    this.language = 'en',
    this.requestState = RequestState.loading,
  });

  final String username;
  final String email;
  final String language;
  final RequestState requestState;

  LoginState copyWith({
    String? username,
    String? email,
    String? language,
    RequestState? requestState,
  }) {
    return LoginState(
      username: username ?? this.username,
      email: email ?? this.email,
      language: language ?? this.language,
      requestState: requestState ?? this.requestState,
    );
  }

  @override
  List<Object> get props => [username, email,language, requestState];
}
