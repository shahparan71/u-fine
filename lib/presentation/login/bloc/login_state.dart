part of 'login_bloc.dart';

final class LoginState extends Equatable {
  const LoginState({
    required this.errorMessage,
    required this.user,
    required this.requestState,
  });

  final String errorMessage;
  final User user;
  final RequestState requestState;

  LoginState copyWith({
    String? errorMessage,
    User? user,
    RequestState? requestState,
  }) {
    return LoginState(
      errorMessage: errorMessage ?? this.errorMessage,
      user: user ?? this.user,
      requestState: requestState ?? this.requestState,
    );
  }

  @override
  List<Object> get props => [user, errorMessage, requestState];
}

class Restaurant {
  final String id;
  final String name;
  List<String> servingList;
  final User user;

  Restaurant({
    required this.id,
    required this.name,
    required this.user,
    this.servingList = const [], // ERROR
  });
}
