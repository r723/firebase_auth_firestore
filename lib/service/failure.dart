// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.firestoreFailure(FirestoreFailure firestoreFailure) =
      _FirestoreFailure;
  const factory Failure.authFailure(AuthFailure authFailure) = _AuthFailure;

  const factory Failure.timedOut() = _TimedOut;
  const factory Failure.networkError() = _NetworkError;
  const factory Failure.serverError() = _ServerError;
  const factory Failure.unexpected({required String errorMsg}) = _Unexpected;

  factory Failure.commonFailure() => const Failure.unexpected(
        errorMsg: "Some error occurred. Please try again",
      );
}

@freezed
class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory FirestoreFailure.alreadyCompleted() = _AlreadyCompleted;
}

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.invalidCredential() = _InvalidCredential;
  const factory AuthFailure.accountExistWithDifferentCredential() =
      _AccountExistWithDifferentCredential;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.invalidPhoneNumber() = _InvalidPhoneNumber;
  const factory AuthFailure.invalidOtp() = _InvalidOtp;
  const factory AuthFailure.sessionExpired() = _SessionExpired;
}
