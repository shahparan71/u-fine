import 'package:dartz/dartz.dart';
import 'package:u_fine/core/error/failure.dart';
import 'package:u_fine/data/models/user_models.dart';
import 'package:u_fine/domain/repository/base_repository.dart';

class GetUserDataDetails {
  BaseRepository baseRepository;

  GetUserDataDetails(this.baseRepository);

  Future<Either<Failure, User>> execute() {
    return baseRepository.getUserData();
  }
}
