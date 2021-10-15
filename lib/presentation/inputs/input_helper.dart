import 'package:formz/formz.dart';

mixin FormzInputHelper<T, E> on FormzInput<T, E> {
  E? isTouchedGetErrorOrNull() {
    if (invalid) {
      return error;
    }
  }
}
