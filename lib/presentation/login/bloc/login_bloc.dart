import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:u_fine/core/error/failure.dart';
import 'package:u_fine/core/util/enums.dart';
import 'package:u_fine/core/util/shared_preferences.dart';
import 'package:u_fine/core/util/shared_preferences_constant.dart';
import 'package:u_fine/data/models/user_models.dart';
import 'package:u_fine/domain/repository/base_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  BaseRepository baseRepository;

  LoginBloc(this.baseRepository) : super(LoginState(errorMessage: "Error", requestState: RequestState.loading, user: User())) {
    on<UserAlreadyLoggedIn>(_userAlreadyLoggedIn);
    on<LoginButtonClick>(_loginButtonClick);
    on<LanguageChange>(_LanguageChange);
  }

  Future<FutureOr<void>> _userAlreadyLoggedIn(UserAlreadyLoggedIn event, Emitter<LoginState> emit) async {
    String value = SharedPreferencesRepository.getString(SharedPreferencesConstant.USER_ID, "111");
    print("ABC4343");

    await Future.delayed(const Duration(seconds: 2));

    if (value == "111") {
      emit(state.copyWith(
        requestState: RequestState.NotLoggedIn,
      ));
    } else
      emit(state.copyWith(
        requestState: RequestState.loggedIn,
      ));
  }

  Future<FutureOr<void>> _loginButtonClick(LoginButtonClick event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
      requestState: RequestState.loading,
    ));
    var list = await baseRepository.getUserData();

    list.fold((exception) {
      emit(state.copyWith(requestState: RequestState.error, errorMessage: exception.errorMessage));
    }, (isSuccesed) {
      print(isSuccesed.apiPacket!.packet!.userId);
      emit(state.copyWith(requestState: RequestState.loaded, user: isSuccesed));
    });
  }

  FutureOr<void> _LanguageChange(LanguageChange event, Emitter<LoginState> emit) {
    //emit(state.copyWith(language: event.lang));
  }
}
