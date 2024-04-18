import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:u_fine/core/services/service_locator.dart';
import 'package:u_fine/core/util/enums.dart';
import 'package:u_fine/core/util/shared_preferences.dart';
import 'package:u_fine/router/routerr.dart';

import 'presentation/login/bloc/login_bloc.dart';
import 'presentation/login/view/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ServicesLocator().init();
  SharedPreferencesRepository().init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<LoginBloc>()..add(UserAlreadyLoggedIn()),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, LoginState state) {
            if (state.requestState == RequestState.error) {
              print("object4344${state.errorMessage}");
            }
          },
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MainPage(state),
              onGenerateRoute: Routerr.onGenerateRouter,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              //locale: Locale(state.language),
            );
          },
        ));
  }
}

class MainPage extends StatefulWidget {
  final LoginState state;

  const MainPage(this.state, {super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: widget.state.requestState == RequestState.loading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : Container(
              child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<LoginBloc>(context).add(LoginButtonClick());
                      },
                      child: Text(AppLocalizations.of(context)!.helloWorld))),
            ),
    ));
  }
}
