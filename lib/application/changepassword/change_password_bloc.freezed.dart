// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  CodeChanged codeChanged(String codeStr) {
    return CodeChanged(
      codeStr,
    );
  }

// ignore: unused_element
  TokenChanged tokenChanged(String tokenStr) {
    return TokenChanged(
      tokenStr,
    );
  }

// ignore: unused_element
  NewPasswordChanged newPasswordChanged(String passwordStr) {
    return NewPasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  ConfirmPasswordChanged confirmPasswordChanged(String passwordStr) {
    return ConfirmPasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  ChangePassword changePassword() {
    return const ChangePassword();
  }

// ignore: unused_element
  SendCode sendCode() {
    return const SendCode();
  }

// ignore: unused_element
  VerifyCode verifyCode() {
    return const VerifyCode();
  }

// ignore: unused_element
  UpdatePassword updatePassword() {
    return const UpdatePassword();
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ChangePasswordEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ChangePasswordEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $CodeChangedCopyWith<$Res> {
  factory $CodeChangedCopyWith(
          CodeChanged value, $Res Function(CodeChanged) then) =
      _$CodeChangedCopyWithImpl<$Res>;
  $Res call({String codeStr});
}

/// @nodoc
class _$CodeChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $CodeChangedCopyWith<$Res> {
  _$CodeChangedCopyWithImpl(
      CodeChanged _value, $Res Function(CodeChanged) _then)
      : super(_value, (v) => _then(v as CodeChanged));

  @override
  CodeChanged get _value => super._value as CodeChanged;

  @override
  $Res call({
    Object codeStr = freezed,
  }) {
    return _then(CodeChanged(
      codeStr == freezed ? _value.codeStr : codeStr as String,
    ));
  }
}

/// @nodoc
class _$CodeChanged implements CodeChanged {
  const _$CodeChanged(this.codeStr) : assert(codeStr != null);

  @override
  final String codeStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.codeChanged(codeStr: $codeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeChanged &&
            (identical(other.codeStr, codeStr) ||
                const DeepCollectionEquality().equals(other.codeStr, codeStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(codeStr);

  @override
  $CodeChangedCopyWith<CodeChanged> get copyWith =>
      _$CodeChangedCopyWithImpl<CodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return codeChanged(codeStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeChanged != null) {
      return codeChanged(codeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class CodeChanged implements ChangePasswordEvent {
  const factory CodeChanged(String codeStr) = _$CodeChanged;

  String get codeStr;
  $CodeChangedCopyWith<CodeChanged> get copyWith;
}

/// @nodoc
abstract class $TokenChangedCopyWith<$Res> {
  factory $TokenChangedCopyWith(
          TokenChanged value, $Res Function(TokenChanged) then) =
      _$TokenChangedCopyWithImpl<$Res>;
  $Res call({String tokenStr});
}

/// @nodoc
class _$TokenChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $TokenChangedCopyWith<$Res> {
  _$TokenChangedCopyWithImpl(
      TokenChanged _value, $Res Function(TokenChanged) _then)
      : super(_value, (v) => _then(v as TokenChanged));

  @override
  TokenChanged get _value => super._value as TokenChanged;

  @override
  $Res call({
    Object tokenStr = freezed,
  }) {
    return _then(TokenChanged(
      tokenStr == freezed ? _value.tokenStr : tokenStr as String,
    ));
  }
}

/// @nodoc
class _$TokenChanged implements TokenChanged {
  const _$TokenChanged(this.tokenStr) : assert(tokenStr != null);

  @override
  final String tokenStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.tokenChanged(tokenStr: $tokenStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TokenChanged &&
            (identical(other.tokenStr, tokenStr) ||
                const DeepCollectionEquality()
                    .equals(other.tokenStr, tokenStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tokenStr);

  @override
  $TokenChangedCopyWith<TokenChanged> get copyWith =>
      _$TokenChangedCopyWithImpl<TokenChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return tokenChanged(tokenStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenChanged != null) {
      return tokenChanged(tokenStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return tokenChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenChanged != null) {
      return tokenChanged(this);
    }
    return orElse();
  }
}

abstract class TokenChanged implements ChangePasswordEvent {
  const factory TokenChanged(String tokenStr) = _$TokenChanged;

  String get tokenStr;
  $TokenChangedCopyWith<TokenChanged> get copyWith;
}

/// @nodoc
abstract class $NewPasswordChangedCopyWith<$Res> {
  factory $NewPasswordChangedCopyWith(
          NewPasswordChanged value, $Res Function(NewPasswordChanged) then) =
      _$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $NewPasswordChangedCopyWith<$Res> {
  _$NewPasswordChangedCopyWithImpl(
      NewPasswordChanged _value, $Res Function(NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as NewPasswordChanged));

  @override
  NewPasswordChanged get _value => super._value as NewPasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(NewPasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$NewPasswordChanged implements NewPasswordChanged {
  const _$NewPasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith =>
      _$NewPasswordChangedCopyWithImpl<NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return newPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newPasswordChanged != null) {
      return newPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class NewPasswordChanged implements ChangePasswordEvent {
  const factory NewPasswordChanged(String passwordStr) = _$NewPasswordChanged;

  String get passwordStr;
  $NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.passwordStr)
      : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return confirmPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements ChangePasswordEvent {
  const factory ConfirmPasswordChanged(String passwordStr) =
      _$ConfirmPasswordChanged;

  String get passwordStr;
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith;
}

/// @nodoc
abstract class $ChangePasswordCopyWith<$Res> {
  factory $ChangePasswordCopyWith(
          ChangePassword value, $Res Function(ChangePassword) then) =
      _$ChangePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(
      ChangePassword _value, $Res Function(ChangePassword) _then)
      : super(_value, (v) => _then(v as ChangePassword));

  @override
  ChangePassword get _value => super._value as ChangePassword;
}

/// @nodoc
class _$ChangePassword implements ChangePassword {
  const _$ChangePassword();

  @override
  String toString() {
    return 'ChangePasswordEvent.changePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return changePassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements ChangePasswordEvent {
  const factory ChangePassword() = _$ChangePassword;
}

/// @nodoc
abstract class $SendCodeCopyWith<$Res> {
  factory $SendCodeCopyWith(SendCode value, $Res Function(SendCode) then) =
      _$SendCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendCodeCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $SendCodeCopyWith<$Res> {
  _$SendCodeCopyWithImpl(SendCode _value, $Res Function(SendCode) _then)
      : super(_value, (v) => _then(v as SendCode));

  @override
  SendCode get _value => super._value as SendCode;
}

/// @nodoc
class _$SendCode implements SendCode {
  const _$SendCode();

  @override
  String toString() {
    return 'ChangePasswordEvent.sendCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return sendCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendCode != null) {
      return sendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class SendCode implements ChangePasswordEvent {
  const factory SendCode() = _$SendCode;
}

/// @nodoc
abstract class $VerifyCodeCopyWith<$Res> {
  factory $VerifyCodeCopyWith(
          VerifyCode value, $Res Function(VerifyCode) then) =
      _$VerifyCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyCodeCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $VerifyCodeCopyWith<$Res> {
  _$VerifyCodeCopyWithImpl(VerifyCode _value, $Res Function(VerifyCode) _then)
      : super(_value, (v) => _then(v as VerifyCode));

  @override
  VerifyCode get _value => super._value as VerifyCode;
}

/// @nodoc
class _$VerifyCode implements VerifyCode {
  const _$VerifyCode();

  @override
  String toString() {
    return 'ChangePasswordEvent.verifyCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return verifyCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyCode != null) {
      return verifyCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class VerifyCode implements ChangePasswordEvent {
  const factory VerifyCode() = _$VerifyCode;
}

/// @nodoc
abstract class $UpdatePasswordCopyWith<$Res> {
  factory $UpdatePasswordCopyWith(
          UpdatePassword value, $Res Function(UpdatePassword) then) =
      _$UpdatePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdatePasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $UpdatePasswordCopyWith<$Res> {
  _$UpdatePasswordCopyWithImpl(
      UpdatePassword _value, $Res Function(UpdatePassword) _then)
      : super(_value, (v) => _then(v as UpdatePassword));

  @override
  UpdatePassword get _value => super._value as UpdatePassword;
}

/// @nodoc
class _$UpdatePassword implements UpdatePassword {
  const _$UpdatePassword();

  @override
  String toString() {
    return 'ChangePasswordEvent.updatePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdatePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result codeChanged(String codeStr),
    @required Result tokenChanged(String tokenStr),
    @required Result newPasswordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result changePassword(),
    @required Result sendCode(),
    @required Result verifyCode(),
    @required Result updatePassword(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return updatePassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result codeChanged(String codeStr),
    Result tokenChanged(String tokenStr),
    Result newPasswordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result changePassword(),
    Result sendCode(),
    Result verifyCode(),
    Result updatePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePassword != null) {
      return updatePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result tokenChanged(TokenChanged value),
    @required Result newPasswordChanged(NewPasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result changePassword(ChangePassword value),
    @required Result sendCode(SendCode value),
    @required Result verifyCode(VerifyCode value),
    @required Result updatePassword(UpdatePassword value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(codeChanged != null);
    assert(tokenChanged != null);
    assert(newPasswordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(changePassword != null);
    assert(sendCode != null);
    assert(verifyCode != null);
    assert(updatePassword != null);
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result codeChanged(CodeChanged value),
    Result tokenChanged(TokenChanged value),
    Result newPasswordChanged(NewPasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result changePassword(ChangePassword value),
    Result sendCode(SendCode value),
    Result verifyCode(VerifyCode value),
    Result updatePassword(UpdatePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UpdatePassword implements ChangePasswordEvent {
  const factory UpdatePassword() = _$UpdatePassword;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

// ignore: unused_element
  _ChangePasswordState call(
      {@required
          Password password,
      @required
          Password newPassword,
      @required
          Password confirmPassword,
      @required
          EmailAddress email,
      @required
          StringNotEmpty code,
      @required
          StringNotEmpty token,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
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
              resetPasswordFailureOrSuccessOption}) {
    return _ChangePasswordState(
      password: password,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
      email: email,
      code: code,
      token: token,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      changePasswordFailureOrSuccessOption:
          changePasswordFailureOrSuccessOption,
      sendCodeFailureOrSuccessOption: sendCodeFailureOrSuccessOption,
      verifyCodeFailureOrSuccessOption: verifyCodeFailureOrSuccessOption,
      resetPasswordFailureOrSuccessOption: resetPasswordFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Password get password;
  Password get newPassword;
  Password get confirmPassword;
  EmailAddress get email;
  StringNotEmpty get code;
  StringNotEmpty get token;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<ServerFailure, ApiResponse>>
      get changePasswordFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>> get sendCodeFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>>
      get verifyCodeFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>>
      get resetPasswordFailureOrSuccessOption;

  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Password newPassword,
      Password confirmPassword,
      EmailAddress email,
      StringNotEmpty code,
      StringNotEmpty token,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ServerFailure, ApiResponse>>
          changePasswordFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>> sendCodeFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          verifyCodeFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          resetPasswordFailureOrSuccessOption});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object password = freezed,
    Object newPassword = freezed,
    Object confirmPassword = freezed,
    Object email = freezed,
    Object code = freezed,
    Object token = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object changePasswordFailureOrSuccessOption = freezed,
    Object sendCodeFailureOrSuccessOption = freezed,
    Object verifyCodeFailureOrSuccessOption = freezed,
    Object resetPasswordFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed ? _value.password : password as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      email: email == freezed ? _value.email : email as EmailAddress,
      code: code == freezed ? _value.code : code as StringNotEmpty,
      token: token == freezed ? _value.token : token as StringNotEmpty,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      changePasswordFailureOrSuccessOption:
          changePasswordFailureOrSuccessOption == freezed
              ? _value.changePasswordFailureOrSuccessOption
              : changePasswordFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
      sendCodeFailureOrSuccessOption: sendCodeFailureOrSuccessOption == freezed
          ? _value.sendCodeFailureOrSuccessOption
          : sendCodeFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      verifyCodeFailureOrSuccessOption:
          verifyCodeFailureOrSuccessOption == freezed
              ? _value.verifyCodeFailureOrSuccessOption
              : verifyCodeFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
      resetPasswordFailureOrSuccessOption:
          resetPasswordFailureOrSuccessOption == freezed
              ? _value.resetPasswordFailureOrSuccessOption
              : resetPasswordFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Password newPassword,
      Password confirmPassword,
      EmailAddress email,
      StringNotEmpty code,
      StringNotEmpty token,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ServerFailure, ApiResponse>>
          changePasswordFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>> sendCodeFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          verifyCodeFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          resetPasswordFailureOrSuccessOption});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object password = freezed,
    Object newPassword = freezed,
    Object confirmPassword = freezed,
    Object email = freezed,
    Object code = freezed,
    Object token = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object changePasswordFailureOrSuccessOption = freezed,
    Object sendCodeFailureOrSuccessOption = freezed,
    Object verifyCodeFailureOrSuccessOption = freezed,
    Object resetPasswordFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChangePasswordState(
      password: password == freezed ? _value.password : password as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      email: email == freezed ? _value.email : email as EmailAddress,
      code: code == freezed ? _value.code : code as StringNotEmpty,
      token: token == freezed ? _value.token : token as StringNotEmpty,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      changePasswordFailureOrSuccessOption:
          changePasswordFailureOrSuccessOption == freezed
              ? _value.changePasswordFailureOrSuccessOption
              : changePasswordFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
      sendCodeFailureOrSuccessOption: sendCodeFailureOrSuccessOption == freezed
          ? _value.sendCodeFailureOrSuccessOption
          : sendCodeFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      verifyCodeFailureOrSuccessOption:
          verifyCodeFailureOrSuccessOption == freezed
              ? _value.verifyCodeFailureOrSuccessOption
              : verifyCodeFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
      resetPasswordFailureOrSuccessOption:
          resetPasswordFailureOrSuccessOption == freezed
              ? _value.resetPasswordFailureOrSuccessOption
              : resetPasswordFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {@required this.password,
      @required this.newPassword,
      @required this.confirmPassword,
      @required this.email,
      @required this.code,
      @required this.token,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.changePasswordFailureOrSuccessOption,
      @required this.sendCodeFailureOrSuccessOption,
      @required this.verifyCodeFailureOrSuccessOption,
      @required this.resetPasswordFailureOrSuccessOption})
      : assert(password != null),
        assert(newPassword != null),
        assert(confirmPassword != null),
        assert(email != null),
        assert(code != null),
        assert(token != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(changePasswordFailureOrSuccessOption != null),
        assert(sendCodeFailureOrSuccessOption != null),
        assert(verifyCodeFailureOrSuccessOption != null),
        assert(resetPasswordFailureOrSuccessOption != null);

  @override
  final Password password;
  @override
  final Password newPassword;
  @override
  final Password confirmPassword;
  @override
  final EmailAddress email;
  @override
  final StringNotEmpty code;
  @override
  final StringNotEmpty token;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      changePasswordFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      sendCodeFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      verifyCodeFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      resetPasswordFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChangePasswordState(password: $password, newPassword: $newPassword, confirmPassword: $confirmPassword, email: $email, code: $code, token: $token, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, changePasswordFailureOrSuccessOption: $changePasswordFailureOrSuccessOption, sendCodeFailureOrSuccessOption: $sendCodeFailureOrSuccessOption, verifyCodeFailureOrSuccessOption: $verifyCodeFailureOrSuccessOption, resetPasswordFailureOrSuccessOption: $resetPasswordFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.changePasswordFailureOrSuccessOption,
                    changePasswordFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.changePasswordFailureOrSuccessOption,
                    changePasswordFailureOrSuccessOption)) &&
            (identical(other.sendCodeFailureOrSuccessOption, sendCodeFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.sendCodeFailureOrSuccessOption,
                    sendCodeFailureOrSuccessOption)) &&
            (identical(other.verifyCodeFailureOrSuccessOption,
                    verifyCodeFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.verifyCodeFailureOrSuccessOption,
                    verifyCodeFailureOrSuccessOption)) &&
            (identical(other.resetPasswordFailureOrSuccessOption,
                    resetPasswordFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.resetPasswordFailureOrSuccessOption,
                    resetPasswordFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality()
          .hash(changePasswordFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(sendCodeFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(verifyCodeFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(resetPasswordFailureOrSuccessOption);

  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {@required
          Password password,
      @required
          Password newPassword,
      @required
          Password confirmPassword,
      @required
          EmailAddress email,
      @required
          StringNotEmpty code,
      @required
          StringNotEmpty token,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
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
              resetPasswordFailureOrSuccessOption}) = _$_ChangePasswordState;

  @override
  Password get password;
  @override
  Password get newPassword;
  @override
  Password get confirmPassword;
  @override
  EmailAddress get email;
  @override
  StringNotEmpty get code;
  @override
  StringNotEmpty get token;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get changePasswordFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>> get sendCodeFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get verifyCodeFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get resetPasswordFailureOrSuccessOption;
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith;
}
