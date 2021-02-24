part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @required Password password,
    @required Password newPassword,
    @required Password confirmPassword,
    @required EmailAddress email,
    @required StringNotEmpty code,
    @required StringNotEmpty token,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            changePasswordFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            sendCodeFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            verifyCodeFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, ApiResponse>>
            resetPasswordFailureOrSuccessOption,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        password: Password(''),
        newPassword: Password(''),
        confirmPassword: Password(''),
        email: EmailAddress(''),
        code: StringNotEmpty(''),
        token: StringNotEmpty(''),
        isSubmitting: false,
        showErrorMessages: false,
        changePasswordFailureOrSuccessOption: none(),
        sendCodeFailureOrSuccessOption: none(),
        verifyCodeFailureOrSuccessOption: none(),
        resetPasswordFailureOrSuccessOption: none(),
      );
}
