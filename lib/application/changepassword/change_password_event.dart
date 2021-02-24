part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory ChangePasswordEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory ChangePasswordEvent.codeChanged(String codeStr) = CodeChanged;
  const factory ChangePasswordEvent.tokenChanged(String tokenStr) =
      TokenChanged;
  const factory ChangePasswordEvent.newPasswordChanged(String passwordStr) =
      NewPasswordChanged;
  const factory ChangePasswordEvent.confirmPasswordChanged(String passwordStr) =
      ConfirmPasswordChanged;
  const factory ChangePasswordEvent.changePassword() = ChangePassword;
  const factory ChangePasswordEvent.sendCode() = SendCode;
  const factory ChangePasswordEvent.verifyCode() = VerifyCode;
  const factory ChangePasswordEvent.updatePassword() = UpdatePassword;
}
