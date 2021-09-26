import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/usecase.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

class LoginWithGoogle implements UseCase<User, NoParams> {
  final AuthRepositoryInterface _authRepo;

  LoginWithGoogle(this._authRepo);
  @override
  Future<Either<Failure, User>> call(NoParams p) {
    return _authRepo.loginWithGoogle();
  }
}
