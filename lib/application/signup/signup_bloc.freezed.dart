// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

// ignore: unused_element
  ImageChanged imageChanged(String imageStr) {
    return ImageChanged(
      imageStr,
    );
  }

// ignore: unused_element
  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstNameStr) {
    return FirstNameChanged(
      firstNameStr,
    );
  }

// ignore: unused_element
  LastNameChanged lastNameChanged(String lastNameStr) {
    return LastNameChanged(
      lastNameStr,
    );
  }

// ignore: unused_element
  PhoneChanged phoneChanged(String phoneStr) {
    return PhoneChanged(
      phoneStr,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
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
  RegisterPressed registerPressed() {
    return const RegisterPressed();
  }

// ignore: unused_element
  UpdateProfilePressed updateProfilePressed() {
    return const UpdateProfilePressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $ImageChangedCopyWith<$Res> {
  factory $ImageChangedCopyWith(
          ImageChanged value, $Res Function(ImageChanged) then) =
      _$ImageChangedCopyWithImpl<$Res>;
  $Res call({String imageStr});
}

/// @nodoc
class _$ImageChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $ImageChangedCopyWith<$Res> {
  _$ImageChangedCopyWithImpl(
      ImageChanged _value, $Res Function(ImageChanged) _then)
      : super(_value, (v) => _then(v as ImageChanged));

  @override
  ImageChanged get _value => super._value as ImageChanged;

  @override
  $Res call({
    Object imageStr = freezed,
  }) {
    return _then(ImageChanged(
      imageStr == freezed ? _value.imageStr : imageStr as String,
    ));
  }
}

/// @nodoc
class _$ImageChanged with DiagnosticableTreeMixin implements ImageChanged {
  const _$ImageChanged(this.imageStr) : assert(imageStr != null);

  @override
  final String imageStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.imageChanged(imageStr: $imageStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.imageChanged'))
      ..add(DiagnosticsProperty('imageStr', imageStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageChanged &&
            (identical(other.imageStr, imageStr) ||
                const DeepCollectionEquality()
                    .equals(other.imageStr, imageStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageStr);

  @override
  $ImageChangedCopyWith<ImageChanged> get copyWith =>
      _$ImageChangedCopyWithImpl<ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return imageChanged(imageStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(imageStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class ImageChanged implements SignUpEvent {
  const factory ImageChanged(String imageStr) = _$ImageChanged;

  String get imageStr;
  $ImageChangedCopyWith<ImageChanged> get copyWith;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged
    with DiagnosticableTreeMixin
    implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.usernameChanged'))
      ..add(DiagnosticsProperty('usernameStr', usernameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstNameStr});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstNameStr = freezed,
  }) {
    return _then(FirstNameChanged(
      firstNameStr == freezed ? _value.firstNameStr : firstNameStr as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged
    with DiagnosticableTreeMixin
    implements FirstNameChanged {
  const _$FirstNameChanged(this.firstNameStr) : assert(firstNameStr != null);

  @override
  final String firstNameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.firstNameChanged(firstNameStr: $firstNameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.firstNameChanged'))
      ..add(DiagnosticsProperty('firstNameStr', firstNameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstNameStr, firstNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.firstNameStr, firstNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstNameStr);

  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return firstNameChanged(firstNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements SignUpEvent {
  const factory FirstNameChanged(String firstNameStr) = _$FirstNameChanged;

  String get firstNameStr;
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastNameStr});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object lastNameStr = freezed,
  }) {
    return _then(LastNameChanged(
      lastNameStr == freezed ? _value.lastNameStr : lastNameStr as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged
    with DiagnosticableTreeMixin
    implements LastNameChanged {
  const _$LastNameChanged(this.lastNameStr) : assert(lastNameStr != null);

  @override
  final String lastNameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.lastNameChanged'))
      ..add(DiagnosticsProperty('lastNameStr', lastNameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.lastNameStr, lastNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastNameStr);

  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements SignUpEvent {
  const factory LastNameChanged(String lastNameStr) = _$LastNameChanged;

  String get lastNameStr;
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object phoneStr = freezed,
  }) {
    return _then(PhoneChanged(
      phoneStr == freezed ? _value.phoneStr : phoneStr as String,
    ));
  }
}

/// @nodoc
class _$PhoneChanged with DiagnosticableTreeMixin implements PhoneChanged {
  const _$PhoneChanged(this.phoneStr) : assert(phoneStr != null);

  @override
  final String phoneStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.phoneChanged'))
      ..add(DiagnosticsProperty('phoneStr', phoneStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.phoneStr, phoneStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneStr, phoneStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneStr);

  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements SignUpEvent {
  const factory PhoneChanged(String phoneStr) = _$PhoneChanged;

  String get phoneStr;
  $PhoneChangedCopyWith<PhoneChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.emailChanged'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
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
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
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
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
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
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
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
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
class _$ConfirmPasswordChanged
    with DiagnosticableTreeMixin
    implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.passwordStr)
      : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.confirmPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.confirmPasswordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
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
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return confirmPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
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
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements SignUpEvent {
  const factory ConfirmPasswordChanged(String passwordStr) =
      _$ConfirmPasswordChanged;

  String get passwordStr;
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterPressedCopyWith<$Res> {
  factory $RegisterPressedCopyWith(
          RegisterPressed value, $Res Function(RegisterPressed) then) =
      _$RegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $RegisterPressedCopyWith<$Res> {
  _$RegisterPressedCopyWithImpl(
      RegisterPressed _value, $Res Function(RegisterPressed) _then)
      : super(_value, (v) => _then(v as RegisterPressed));

  @override
  RegisterPressed get _value => super._value as RegisterPressed;
}

/// @nodoc
class _$RegisterPressed
    with DiagnosticableTreeMixin
    implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.registerPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpEvent.registerPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements SignUpEvent {
  const factory RegisterPressed() = _$RegisterPressed;
}

/// @nodoc
abstract class $UpdateProfilePressedCopyWith<$Res> {
  factory $UpdateProfilePressedCopyWith(UpdateProfilePressed value,
          $Res Function(UpdateProfilePressed) then) =
      _$UpdateProfilePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfilePressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $UpdateProfilePressedCopyWith<$Res> {
  _$UpdateProfilePressedCopyWithImpl(
      UpdateProfilePressed _value, $Res Function(UpdateProfilePressed) _then)
      : super(_value, (v) => _then(v as UpdateProfilePressed));

  @override
  UpdateProfilePressed get _value => super._value as UpdateProfilePressed;
}

/// @nodoc
class _$UpdateProfilePressed
    with DiagnosticableTreeMixin
    implements UpdateProfilePressed {
  const _$UpdateProfilePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.updateProfilePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.updateProfilePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateProfilePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result usernameChanged(String usernameStr),
    @required Result firstNameChanged(String firstNameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneChanged(String phoneStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result confirmPasswordChanged(String passwordStr),
    @required Result registerPressed(),
    @required Result updateProfilePressed(),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return updateProfilePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result usernameChanged(String usernameStr),
    Result firstNameChanged(String firstNameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneChanged(String phoneStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result confirmPasswordChanged(String passwordStr),
    Result registerPressed(),
    Result updateProfilePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProfilePressed != null) {
      return updateProfilePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result confirmPasswordChanged(ConfirmPasswordChanged value),
    @required Result registerPressed(RegisterPressed value),
    @required Result updateProfilePressed(UpdateProfilePressed value),
  }) {
    assert(imageChanged != null);
    assert(usernameChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(registerPressed != null);
    assert(updateProfilePressed != null);
    return updateProfilePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result usernameChanged(UsernameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneChanged(PhoneChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result confirmPasswordChanged(ConfirmPasswordChanged value),
    Result registerPressed(RegisterPressed value),
    Result updateProfilePressed(UpdateProfilePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateProfilePressed != null) {
      return updateProfilePressed(this);
    }
    return orElse();
  }
}

abstract class UpdateProfilePressed implements SignUpEvent {
  const factory UpdateProfilePressed() = _$UpdateProfilePressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {@required
          String image,
      @required
          StringNotEmpty username,
      @required
          StringNotEmpty firstName,
      @required
          StringNotEmpty lastName,
      @required
          String phone,
      @required
          EmailAddress emailAddress,
      @required
          Password password,
      @required
          Password confirmPassword,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              actionFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, DetailUser>>
              updateUserFailureOrSuccessOption}) {
    return _SignUpState(
      image: image,
      username: username,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      emailAddress: emailAddress,
      password: password,
      confirmPassword: confirmPassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      actionFailureOrSuccessOption: actionFailureOrSuccessOption,
      updateUserFailureOrSuccessOption: updateUserFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  String get image;
  StringNotEmpty get username;
  StringNotEmpty get firstName;
  StringNotEmpty get lastName;
  String get phone;
  EmailAddress get emailAddress;
  Password get password;
  Password get confirmPassword;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ServerFailure, ApiResponse>> get actionFailureOrSuccessOption;
  Option<Either<ServerFailure, DetailUser>>
      get updateUserFailureOrSuccessOption;

  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {String image,
      StringNotEmpty username,
      StringNotEmpty firstName,
      StringNotEmpty lastName,
      String phone,
      EmailAddress emailAddress,
      Password password,
      Password confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, ApiResponse>> actionFailureOrSuccessOption,
      Option<Either<ServerFailure, DetailUser>>
          updateUserFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object image = freezed,
    Object username = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phone = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object actionFailureOrSuccessOption = freezed,
    Object updateUserFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as String,
      username:
          username == freezed ? _value.username : username as StringNotEmpty,
      firstName:
          firstName == freezed ? _value.firstName : firstName as StringNotEmpty,
      lastName:
          lastName == freezed ? _value.lastName : lastName as StringNotEmpty,
      phone: phone == freezed ? _value.phone : phone as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      actionFailureOrSuccessOption: actionFailureOrSuccessOption == freezed
          ? _value.actionFailureOrSuccessOption
          : actionFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      updateUserFailureOrSuccessOption:
          updateUserFailureOrSuccessOption == freezed
              ? _value.updateUserFailureOrSuccessOption
              : updateUserFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailUser>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      StringNotEmpty username,
      StringNotEmpty firstName,
      StringNotEmpty lastName,
      String phone,
      EmailAddress emailAddress,
      Password password,
      Password confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, ApiResponse>> actionFailureOrSuccessOption,
      Option<Either<ServerFailure, DetailUser>>
          updateUserFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object image = freezed,
    Object username = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phone = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object actionFailureOrSuccessOption = freezed,
    Object updateUserFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpState(
      image: image == freezed ? _value.image : image as String,
      username:
          username == freezed ? _value.username : username as StringNotEmpty,
      firstName:
          firstName == freezed ? _value.firstName : firstName as StringNotEmpty,
      lastName:
          lastName == freezed ? _value.lastName : lastName as StringNotEmpty,
      phone: phone == freezed ? _value.phone : phone as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      actionFailureOrSuccessOption: actionFailureOrSuccessOption == freezed
          ? _value.actionFailureOrSuccessOption
          : actionFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      updateUserFailureOrSuccessOption:
          updateUserFailureOrSuccessOption == freezed
              ? _value.updateUserFailureOrSuccessOption
              : updateUserFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailUser>>,
    ));
  }
}

/// @nodoc
class _$_SignUpState with DiagnosticableTreeMixin implements _SignUpState {
  const _$_SignUpState(
      {@required this.image,
      @required this.username,
      @required this.firstName,
      @required this.lastName,
      @required this.phone,
      @required this.emailAddress,
      @required this.password,
      @required this.confirmPassword,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.actionFailureOrSuccessOption,
      @required this.updateUserFailureOrSuccessOption})
      : assert(image != null),
        assert(username != null),
        assert(firstName != null),
        assert(lastName != null),
        assert(phone != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(actionFailureOrSuccessOption != null),
        assert(updateUserFailureOrSuccessOption != null);

  @override
  final String image;
  @override
  final StringNotEmpty username;
  @override
  final StringNotEmpty firstName;
  @override
  final StringNotEmpty lastName;
  @override
  final String phone;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ServerFailure, ApiResponse>> actionFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, DetailUser>>
      updateUserFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(image: $image, username: $username, firstName: $firstName, lastName: $lastName, phone: $phone, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, actionFailureOrSuccessOption: $actionFailureOrSuccessOption, updateUserFailureOrSuccessOption: $updateUserFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'actionFailureOrSuccessOption', actionFailureOrSuccessOption))
      ..add(DiagnosticsProperty('updateUserFailureOrSuccessOption',
          updateUserFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.actionFailureOrSuccessOption,
                    actionFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.actionFailureOrSuccessOption,
                    actionFailureOrSuccessOption)) &&
            (identical(other.updateUserFailureOrSuccessOption,
                    updateUserFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.updateUserFailureOrSuccessOption,
                    updateUserFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(actionFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(updateUserFailureOrSuccessOption);

  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {@required
          String image,
      @required
          StringNotEmpty username,
      @required
          StringNotEmpty firstName,
      @required
          StringNotEmpty lastName,
      @required
          String phone,
      @required
          EmailAddress emailAddress,
      @required
          Password password,
      @required
          Password confirmPassword,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              actionFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, DetailUser>>
              updateUserFailureOrSuccessOption}) = _$_SignUpState;

  @override
  String get image;
  @override
  StringNotEmpty get username;
  @override
  StringNotEmpty get firstName;
  @override
  StringNotEmpty get lastName;
  @override
  String get phone;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ServerFailure, ApiResponse>> get actionFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, DetailUser>>
      get updateUserFailureOrSuccessOption;
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}
