// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginUser _$LoginUserFromJson(Map<String, dynamic> json) {
  return _LoginUser.fromJson(json);
}

/// @nodoc
class _$LoginUserTearOff {
  const _$LoginUserTearOff();

// ignore: unused_element
  _LoginUser call({String email, String password}) {
    return _LoginUser(
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  LoginUser fromJson(Map<String, Object> json) {
    return LoginUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginUser = _$LoginUserTearOff();

/// @nodoc
mixin _$LoginUser {
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  $LoginUserCopyWith<LoginUser> get copyWith;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res> implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._value, this._then);

  final LoginUser _value;
  // ignore: unused_field
  final $Res Function(LoginUser) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginUserCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$LoginUserCopyWith(
          _LoginUser value, $Res Function(_LoginUser) then) =
      __$LoginUserCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginUserCopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res>
    implements _$LoginUserCopyWith<$Res> {
  __$LoginUserCopyWithImpl(_LoginUser _value, $Res Function(_LoginUser) _then)
      : super(_value, (v) => _then(v as _LoginUser));

  @override
  _LoginUser get _value => super._value as _LoginUser;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginUser(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginUser implements _LoginUser {
  const _$_LoginUser({this.email, this.password});

  factory _$_LoginUser.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginUserFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$LoginUserCopyWith<_LoginUser> get copyWith =>
      __$LoginUserCopyWithImpl<_LoginUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginUserToJson(this);
  }
}

abstract class _LoginUser implements LoginUser {
  const factory _LoginUser({String email, String password}) = _$_LoginUser;

  factory _LoginUser.fromJson(Map<String, dynamic> json) =
      _$_LoginUser.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  _$LoginUserCopyWith<_LoginUser> get copyWith;
}
