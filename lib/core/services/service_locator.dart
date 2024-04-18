import 'package:get_it/get_it.dart';
import 'package:u_fine/core/util/shared_preferences.dart';
import 'package:u_fine/data/remote_datasource.dart';
import 'package:u_fine/data/repository/base_repository_imp.dart';
import 'package:u_fine/domain/repository/base_repository.dart';
import 'package:u_fine/domain/user_case/get_user_data.dart';
import 'package:u_fine/presentation/login/bloc/login_bloc.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() {
    getIt.registerLazySingleton<BaseRepository>(() => BaseRepositoryImpl(getIt()));
    getIt.registerLazySingleton<DataSourceRepoLogReg>(() => LoginData());

    /*getIt.registerLazySingleton<DataSourceRepository>(() => MovieRemoteDataSource());

    getIt.registerLazySingleton<BaseRepository>(() => BaseRepositoryImpl(getIt()));


    getIt.registerLazySingleton(() => GetTopRatedUseCase(getIt()));
    getIt.registerLazySingleton(() => GetUpcomingUseCase(getIt()));
    getIt.registerLazySingleton(() => DataSourceRepoLogReg(getIt()));

   */

    getIt.registerLazySingleton(() => GetUserDataDetails(getIt()));

    // Bloc
    getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));
  }
}
