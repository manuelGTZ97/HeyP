part of 'signup_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.imageChanged(String imageStr) = ImageChanged;
  const factory SignUpEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory SignUpEvent.firstNameChanged(String firstNameStr) =
      FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String lastNameStr) =
      LastNameChanged;
  const factory SignUpEvent.phoneChanged(String phoneStr) = PhoneChanged;
  const factory SignUpEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignUpEvent.confirmPasswordChanged(String passwordStr) =
      ConfirmPasswordChanged;
  const factory SignUpEvent.registerPressed() = RegisterPressed;
  const factory SignUpEvent.updateProfilePressed() = UpdateProfilePressed;
}
