part of 'signup_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required String image,
    @required StringNotEmpty username,
    @required StringNotEmpty firstName,
    @required StringNotEmpty lastName,
    @required String phone,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ServerFailure, ApiResponse>> actionFailureOrSuccessOption,
    @required
        Option<Either<ServerFailure, DetailUser>>
            updateUserFailureOrSuccessOption,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        image: '',
        username: StringNotEmpty(''),
        firstName: StringNotEmpty(''),
        lastName: StringNotEmpty(''),
        phone: '',
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        actionFailureOrSuccessOption: none(),
        updateUserFailureOrSuccessOption: none(),
      );
}
