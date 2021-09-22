import 'package:get_it/get_it.dart';

import 'data/auth/repositories/firebase_auth_repository.dart';
import 'domain/auth/repositories/auth.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<AuthRepositoryInterface>(FirebaseAuthRepository());
}
