import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/params/auth_params.dart';
import 'package:food_delivery_app/core/usecase.dart';
import 'package:food_delivery_app/domain/auth/entities/user.dart';
import 'package:food_delivery_app/domain/auth/repositories/auth.dart';

class SignUpWithEmail implements UseCase<User, AuthParams> {
  final AuthRepositoryInterface _authRepo;

  SignUpWithEmail(this._authRepo);
  @override
  Future<Either<Failure, User>> call(AuthParams p) {
    return _authRepo.signUpWithEmailAndPassword(p.email, p.password);
  }
}
