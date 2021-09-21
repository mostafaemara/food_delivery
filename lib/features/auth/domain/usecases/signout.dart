import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/usecase.dart';
import 'package:food_delivery_app/features/auth/domain/repositories/auth.dart';

class SignOut implements UseCase<void, NoParams> {
  final AuthRepositoryInterface _authRepo;

  SignOut(this._authRepo);

  @override
  Future<Either<Failure, void>> call(NoParams p) {
    return _authRepo.signOut();
  }
}