import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/params/auth_params.dart';
import 'package:food_delivery_app/core/usecase.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

class LoginWithEmail implements UseCase<User, AuthParams> {
  final AuthRepositoryInterface authRepo;

  LoginWithEmail(this.authRepo);
  @override
  Future<Either<Failure, User>> call(AuthParams p) async {
    return await authRepo.loginWithEmailAndPassword(p.email, p.password);
  }
}
