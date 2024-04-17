part of 'login_bloc.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.username = '',
    this.email = '',
    this.requestState = RequestState.loading,
  });

  final String username;
  final String email;
  final RequestState requestState;

  LoginState copyWith({
    String? username,
    String? email,
    RequestState? requestState,
  }) {
    return LoginState(
      username: username ?? this.username,
      email: email ?? this.email,
      requestState: requestState ?? this.requestState,
    );
  }

  @override
  List<Object> get props => [requestState, username, email];
}
