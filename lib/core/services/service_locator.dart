import 'package:get_it/get_it.dart';
import 'package:u_fine/core/util/shared_preferences.dart';
import 'package:u_fine/presentation/login/bloc/login_bloc.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() {
    //getIt.registerLazySingleton(() => SharedPreferencesRepository());

    /*getIt.registerLazySingleton<DataSourceRepository>(() => MovieRemoteDataSource());

    getIt.registerLazySingleton<BaseRepository>(() => BaseRepositoryImpl(getIt()));


    getIt.registerLazySingleton(() => GetTopRatedUseCase(getIt()));
    getIt.registerLazySingleton(() => GetUpcomingUseCase(getIt()));
    getIt.registerLazySingleton(() => GetDetailsUseCase(getIt()));
    getIt.registerLazySingleton(() => GetTest((getIt())));

    // Bloc
    getIt.registerFactory<MovieBloc>(() => MovieBloc(getIt(), getIt(), getIt()));
    getIt.registerFactory<DetailBloc>(() => DetailBloc(getIt()));*/

    // Bloc
    getIt.registerFactory<LoginBloc>(() => LoginBloc());

  }
}
