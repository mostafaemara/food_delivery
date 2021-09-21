import 'package:food_delivery_app/features/auth/data/repositories/firebase_auth_repository.dart';
import 'package:food_delivery_app/features/auth/domain/repositories/auth.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerLazySingleton<AuthRepositoryInterface>(
      () => FirebaseAuthRepository());
}
