import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:u_fine/core/util/enums.dart';
import 'package:u_fine/core/util/shared_preferences.dart';
import 'package:u_fine/core/util/shared_preferences_constant.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<UserAlreadyLoggedIn>(_userAlreadyLoggedIn);
    on<LoginButtonClick>(_loginButtonClick);
  }

  Future<FutureOr<void>> _userAlreadyLoggedIn(UserAlreadyLoggedIn event, Emitter<LoginState> emit) async {
    String value = SharedPreferencesRepository.getString(SharedPreferencesConstant.USER_ID, "111");
    print("ABC4343");

    /*emit(state.copyWith(
      requestState: RequestState.loading,
    ));*/

    await Future.delayed(const Duration(seconds: 2));

    if (value == "111") {
      emit(state.copyWith(
        requestState: RequestState.NotLoggedIn,
      ));
    } else
      emit(state.copyWith(email: "ABC", requestState: RequestState.loggedIn, username: "XYZ"));
  }

  Future<FutureOr<void>> _loginButtonClick(LoginButtonClick event, Emitter<LoginState> emit) async {
    String value = SharedPreferencesRepository.getString(SharedPreferencesConstant.USER_ID, "111");
    print("ABC4343");

    emit(state.copyWith(
      requestState: RequestState.loading,
    ));

    await Future.delayed(const Duration(seconds: 2));

    if (value == "111") {
      emit(state.copyWith(
        requestState: RequestState.NotLoggedIn,
      ));
    } else
      emit(state.copyWith(email: "ABC", requestState: RequestState.loggedIn, username: "XYZ"));
  }
}
