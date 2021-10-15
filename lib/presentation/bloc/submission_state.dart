import 'package:freezed_annotation/freezed_annotation.dart';
part 'submission_state.freezed.dart';

@freezed
abstract class SubmissionState<T> with _$SubmissionState {
  const factory SubmissionState.submitting() = Submitting<T>;
  const factory SubmissionState.success() = SubmissionSuccess<T>;
  const factory SubmissionState.idle() = SubmissionIdle<T>;
  const factory SubmissionState.failed({required T failure}) =
      SubmissionFailed<T>;
}
