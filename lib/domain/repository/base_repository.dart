import 'package:dartz/dartz.dart';
import 'package:u_fine/core/error/failure.dart';
import 'package:u_fine/data/models/user_models.dart';

abstract class BaseRepository {
  Future<Either<Failure, User>> getUserData();
}
