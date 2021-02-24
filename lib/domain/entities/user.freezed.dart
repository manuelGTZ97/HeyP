// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {int id,
      @nullable @JsonKey(name: 'username') String username,
      @nullable @JsonKey(name: 'first_name') String firstName,
      @nullable @JsonKey(name: 'last_name') String lastName,
      @nullable @JsonKey(name: 'phone') String phone,
      @nullable String email,
      @nullable String password,
      @nullable String avatar,
      @nullable @JsonKey(name: 'confirm_password') String confirmPassword,
      @nullable int posts,
      @nullable int followers,
      @nullable int following,
      @nullable int follow,
      @nullable List<Feed> feeds}) {
    return _User(
      id: id,
      username: username,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      email: email,
      password: password,
      avatar: avatar,
      confirmPassword: confirmPassword,
      posts: posts,
      followers: followers,
      following: following,
      follow: follow,
      feeds: feeds,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id;
  @nullable
  @JsonKey(name: 'username')
  String get username;
  @nullable
  @JsonKey(name: 'first_name')
  String get firstName;
  @nullable
  @JsonKey(name: 'last_name')
  String get lastName;
  @nullable
  @JsonKey(name: 'phone')
  String get phone;
  @nullable
  String get email;
  @nullable
  String get password;
  @nullable
  String get avatar;
  @nullable
  @JsonKey(name: 'confirm_password')
  String get confirmPassword;
  @nullable
  int get posts;
  @nullable
  int get followers;
  @nullable
  int get following;
  @nullable
  int get follow;
  @nullable
  List<Feed> get feeds;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @nullable @JsonKey(name: 'username') String username,
      @nullable @JsonKey(name: 'first_name') String firstName,
      @nullable @JsonKey(name: 'last_name') String lastName,
      @nullable @JsonKey(name: 'phone') String phone,
      @nullable String email,
      @nullable String password,
      @nullable String avatar,
      @nullable @JsonKey(name: 'confirm_password') String confirmPassword,
      @nullable int posts,
      @nullable int followers,
      @nullable int following,
      @nullable int follow,
      @nullable List<Feed> feeds});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object password = freezed,
    Object avatar = freezed,
    Object confirmPassword = freezed,
    Object posts = freezed,
    Object followers = freezed,
    Object following = freezed,
    Object follow = freezed,
    Object feeds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      following: following == freezed ? _value.following : following as int,
      follow: follow == freezed ? _value.follow : follow as int,
      feeds: feeds == freezed ? _value.feeds : feeds as List<Feed>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @nullable @JsonKey(name: 'username') String username,
      @nullable @JsonKey(name: 'first_name') String firstName,
      @nullable @JsonKey(name: 'last_name') String lastName,
      @nullable @JsonKey(name: 'phone') String phone,
      @nullable String email,
      @nullable String password,
      @nullable String avatar,
      @nullable @JsonKey(name: 'confirm_password') String confirmPassword,
      @nullable int posts,
      @nullable int followers,
      @nullable int following,
      @nullable int follow,
      @nullable List<Feed> feeds});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object password = freezed,
    Object avatar = freezed,
    Object confirmPassword = freezed,
    Object posts = freezed,
    Object followers = freezed,
    Object following = freezed,
    Object follow = freezed,
    Object feeds = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      following: following == freezed ? _value.following : following as int,
      follow: follow == freezed ? _value.follow : follow as int,
      feeds: feeds == freezed ? _value.feeds : feeds as List<Feed>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {this.id,
      @nullable @JsonKey(name: 'username') this.username,
      @nullable @JsonKey(name: 'first_name') this.firstName,
      @nullable @JsonKey(name: 'last_name') this.lastName,
      @nullable @JsonKey(name: 'phone') this.phone,
      @nullable this.email,
      @nullable this.password,
      @nullable this.avatar,
      @nullable @JsonKey(name: 'confirm_password') this.confirmPassword,
      @nullable this.posts,
      @nullable this.followers,
      @nullable this.following,
      @nullable this.follow,
      @nullable this.feeds});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  @nullable
  @JsonKey(name: 'username')
  final String username;
  @override
  @nullable
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @nullable
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @nullable
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String password;
  @override
  @nullable
  final String avatar;
  @override
  @nullable
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  @override
  @nullable
  final int posts;
  @override
  @nullable
  final int followers;
  @override
  @nullable
  final int following;
  @override
  @nullable
  final int follow;
  @override
  @nullable
  final List<Feed> feeds;

  @override
  String toString() {
    return 'User(id: $id, username: $username, firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, password: $password, avatar: $avatar, confirmPassword: $confirmPassword, posts: $posts, followers: $followers, following: $following, follow: $follow, feeds: $feeds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)) &&
            (identical(other.follow, follow) ||
                const DeepCollectionEquality().equals(other.follow, follow)) &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(follow) ^
      const DeepCollectionEquality().hash(feeds);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {int id,
      @nullable @JsonKey(name: 'username') String username,
      @nullable @JsonKey(name: 'first_name') String firstName,
      @nullable @JsonKey(name: 'last_name') String lastName,
      @nullable @JsonKey(name: 'phone') String phone,
      @nullable String email,
      @nullable String password,
      @nullable String avatar,
      @nullable @JsonKey(name: 'confirm_password') String confirmPassword,
      @nullable int posts,
      @nullable int followers,
      @nullable int following,
      @nullable int follow,
      @nullable List<Feed> feeds}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  @nullable
  @JsonKey(name: 'username')
  String get username;
  @override
  @nullable
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @nullable
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @nullable
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get password;
  @override
  @nullable
  String get avatar;
  @override
  @nullable
  @JsonKey(name: 'confirm_password')
  String get confirmPassword;
  @override
  @nullable
  int get posts;
  @override
  @nullable
  int get followers;
  @override
  @nullable
  int get following;
  @override
  @nullable
  int get follow;
  @override
  @nullable
  List<Feed> get feeds;
  @override
  _$UserCopyWith<_User> get copyWith;
}
