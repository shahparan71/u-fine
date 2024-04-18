import 'package:dartz/dartz.dart';
import 'package:u_fine/core/error/failure.dart';
import 'package:u_fine/data/models/user_models.dart';
import 'package:u_fine/data/remote_datasource.dart';
import 'package:u_fine/domain/repository/base_repository.dart';

class BaseRepositoryImpl extends BaseRepository {
  DataSourceRepoLogReg dataSourceRepoLogReg;

  BaseRepositoryImpl(this.dataSourceRepoLogReg);

  @override
  Future<Either<Failure, User>> getUserData() async {
    try {
      final result = await dataSourceRepoLogReg.getUserDetails();
      return Right(result);
    } on ServerFailure catch (failure) {
      return Left(failure);
    }
  }
}
