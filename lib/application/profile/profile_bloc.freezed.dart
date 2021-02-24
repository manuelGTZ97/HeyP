// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

// ignore: unused_element
  GetUserPosts getUserPosts(int id) {
    return GetUserPosts(
      id,
    );
  }

// ignore: unused_element
  GetUserinfo getUserinfo(int id) {
    return GetUserinfo(
      id,
    );
  }

// ignore: unused_element
  FollowUser followUser(int id) {
    return FollowUser(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  int get id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPosts(int id),
    @required Result getUserinfo(int id),
    @required Result followUser(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPosts(int id),
    Result getUserinfo(int id),
    Result followUser(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPosts(GetUserPosts value),
    @required Result getUserinfo(GetUserinfo value),
    @required Result followUser(FollowUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPosts(GetUserPosts value),
    Result getUserinfo(GetUserinfo value),
    Result followUser(FollowUser value),
    @required Result orElse(),
  });

  $ProfileEventCopyWith<ProfileEvent> get copyWith;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class $GetUserPostsCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $GetUserPostsCopyWith(
          GetUserPosts value, $Res Function(GetUserPosts) then) =
      _$GetUserPostsCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$GetUserPostsCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $GetUserPostsCopyWith<$Res> {
  _$GetUserPostsCopyWithImpl(
      GetUserPosts _value, $Res Function(GetUserPosts) _then)
      : super(_value, (v) => _then(v as GetUserPosts));

  @override
  GetUserPosts get _value => super._value as GetUserPosts;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetUserPosts(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$GetUserPosts implements GetUserPosts {
  const _$GetUserPosts(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.getUserPosts(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserPosts &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetUserPostsCopyWith<GetUserPosts> get copyWith =>
      _$GetUserPostsCopyWithImpl<GetUserPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPosts(int id),
    @required Result getUserinfo(int id),
    @required Result followUser(int id),
  }) {
    assert(getUserPosts != null);
    assert(getUserinfo != null);
    assert(followUser != null);
    return getUserPosts(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPosts(int id),
    Result getUserinfo(int id),
    Result followUser(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserPosts != null) {
      return getUserPosts(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPosts(GetUserPosts value),
    @required Result getUserinfo(GetUserinfo value),
    @required Result followUser(FollowUser value),
  }) {
    assert(getUserPosts != null);
    assert(getUserinfo != null);
    assert(followUser != null);
    return getUserPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPosts(GetUserPosts value),
    Result getUserinfo(GetUserinfo value),
    Result followUser(FollowUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserPosts != null) {
      return getUserPosts(this);
    }
    return orElse();
  }
}

abstract class GetUserPosts implements ProfileEvent {
  const factory GetUserPosts(int id) = _$GetUserPosts;

  @override
  int get id;
  @override
  $GetUserPostsCopyWith<GetUserPosts> get copyWith;
}

/// @nodoc
abstract class $GetUserinfoCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $GetUserinfoCopyWith(
          GetUserinfo value, $Res Function(GetUserinfo) then) =
      _$GetUserinfoCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$GetUserinfoCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $GetUserinfoCopyWith<$Res> {
  _$GetUserinfoCopyWithImpl(
      GetUserinfo _value, $Res Function(GetUserinfo) _then)
      : super(_value, (v) => _then(v as GetUserinfo));

  @override
  GetUserinfo get _value => super._value as GetUserinfo;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetUserinfo(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$GetUserinfo implements GetUserinfo {
  const _$GetUserinfo(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.getUserinfo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserinfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetUserinfoCopyWith<GetUserinfo> get copyWith =>
      _$GetUserinfoCopyWithImpl<GetUserinfo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPosts(int id),
    @required Result getUserinfo(int id),
    @required Result followUser(int id),
  }) {
    assert(getUserPosts != null);
    assert(getUserinfo != null);
    assert(followUser != null);
    return getUserinfo(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPosts(int id),
    Result getUserinfo(int id),
    Result followUser(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserinfo != null) {
      return getUserinfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPosts(GetUserPosts value),
    @required Result getUserinfo(GetUserinfo value),
    @required Result followUser(FollowUser value),
  }) {
    assert(getUserPosts != null);
    assert(getUserinfo != null);
    assert(followUser != null);
    return getUserinfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPosts(GetUserPosts value),
    Result getUserinfo(GetUserinfo value),
    Result followUser(FollowUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserinfo != null) {
      return getUserinfo(this);
    }
    return orElse();
  }
}

abstract class GetUserinfo implements ProfileEvent {
  const factory GetUserinfo(int id) = _$GetUserinfo;

  @override
  int get id;
  @override
  $GetUserinfoCopyWith<GetUserinfo> get copyWith;
}

/// @nodoc
abstract class $FollowUserCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $FollowUserCopyWith(
          FollowUser value, $Res Function(FollowUser) then) =
      _$FollowUserCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$FollowUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $FollowUserCopyWith<$Res> {
  _$FollowUserCopyWithImpl(FollowUser _value, $Res Function(FollowUser) _then)
      : super(_value, (v) => _then(v as FollowUser));

  @override
  FollowUser get _value => super._value as FollowUser;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(FollowUser(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$FollowUser implements FollowUser {
  const _$FollowUser(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.followUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FollowUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $FollowUserCopyWith<FollowUser> get copyWith =>
      _$FollowUserCopyWithImpl<FollowUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserPosts(int id),
    @required Result getUserinfo(int id),
    @required Result followUser(int id),
  }) {
    assert(getUserPosts != null);
    assert(getUserinfo != null);
    assert(followUser != null);
    return followUser(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserPosts(int id),
    Result getUserinfo(int id),
    Result followUser(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followUser != null) {
      return followUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserPosts(GetUserPosts value),
    @required Result getUserinfo(GetUserinfo value),
    @required Result followUser(FollowUser value),
  }) {
    assert(getUserPosts != null);
    assert(getUserinfo != null);
    assert(followUser != null);
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserPosts(GetUserPosts value),
    Result getUserinfo(GetUserinfo value),
    Result followUser(FollowUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followUser != null) {
      return followUser(this);
    }
    return orElse();
  }
}

abstract class FollowUser implements ProfileEvent {
  const factory FollowUser(int id) = _$FollowUser;

  @override
  int get id;
  @override
  $FollowUserCopyWith<FollowUser> get copyWith;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  _ProfileState call(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailUser>>
              getUserInfoFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, DetailFeeds>>
              getUserPostsFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              followUserFailureOrSuccessOption}) {
    return _ProfileState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      getUserInfoFailureOrSuccessOption: getUserInfoFailureOrSuccessOption,
      getUserPostsFailureOrSuccessOption: getUserPostsFailureOrSuccessOption,
      followUserFailureOrSuccessOption: followUserFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ServerFailure, DetailUser>>
      get getUserInfoFailureOrSuccessOption;
  Option<Either<ServerFailure, DetailFeeds>>
      get getUserPostsFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>>
      get followUserFailureOrSuccessOption;

  $ProfileStateCopyWith<ProfileState> get copyWith;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailUser>>
          getUserInfoFailureOrSuccessOption,
      Option<Either<ServerFailure, DetailFeeds>>
          getUserPostsFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          followUserFailureOrSuccessOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object getUserInfoFailureOrSuccessOption = freezed,
    Object getUserPostsFailureOrSuccessOption = freezed,
    Object followUserFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      getUserInfoFailureOrSuccessOption:
          getUserInfoFailureOrSuccessOption == freezed
              ? _value.getUserInfoFailureOrSuccessOption
              : getUserInfoFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailUser>>,
      getUserPostsFailureOrSuccessOption:
          getUserPostsFailureOrSuccessOption == freezed
              ? _value.getUserPostsFailureOrSuccessOption
              : getUserPostsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailFeeds>>,
      followUserFailureOrSuccessOption:
          followUserFailureOrSuccessOption == freezed
              ? _value.followUserFailureOrSuccessOption
              : followUserFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailUser>>
          getUserInfoFailureOrSuccessOption,
      Option<Either<ServerFailure, DetailFeeds>>
          getUserPostsFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          followUserFailureOrSuccessOption});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object getUserInfoFailureOrSuccessOption = freezed,
    Object getUserPostsFailureOrSuccessOption = freezed,
    Object followUserFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      getUserInfoFailureOrSuccessOption:
          getUserInfoFailureOrSuccessOption == freezed
              ? _value.getUserInfoFailureOrSuccessOption
              : getUserInfoFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailUser>>,
      getUserPostsFailureOrSuccessOption:
          getUserPostsFailureOrSuccessOption == freezed
              ? _value.getUserPostsFailureOrSuccessOption
              : getUserPostsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailFeeds>>,
      followUserFailureOrSuccessOption:
          followUserFailureOrSuccessOption == freezed
              ? _value.followUserFailureOrSuccessOption
              : followUserFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.getUserInfoFailureOrSuccessOption,
      @required this.getUserPostsFailureOrSuccessOption,
      @required this.followUserFailureOrSuccessOption})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(getUserInfoFailureOrSuccessOption != null),
        assert(getUserPostsFailureOrSuccessOption != null),
        assert(followUserFailureOrSuccessOption != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ServerFailure, DetailUser>>
      getUserInfoFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, DetailFeeds>>
      getUserPostsFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      followUserFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, getUserInfoFailureOrSuccessOption: $getUserInfoFailureOrSuccessOption, getUserPostsFailureOrSuccessOption: $getUserPostsFailureOrSuccessOption, followUserFailureOrSuccessOption: $followUserFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.getUserInfoFailureOrSuccessOption,
                    getUserInfoFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getUserInfoFailureOrSuccessOption,
                    getUserInfoFailureOrSuccessOption)) &&
            (identical(other.getUserPostsFailureOrSuccessOption,
                    getUserPostsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getUserPostsFailureOrSuccessOption,
                    getUserPostsFailureOrSuccessOption)) &&
            (identical(other.followUserFailureOrSuccessOption,
                    followUserFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.followUserFailureOrSuccessOption,
                    followUserFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(getUserInfoFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(getUserPostsFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(followUserFailureOrSuccessOption);

  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailUser>>
              getUserInfoFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, DetailFeeds>>
              getUserPostsFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              followUserFailureOrSuccessOption}) = _$_ProfileState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ServerFailure, DetailUser>>
      get getUserInfoFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, DetailFeeds>>
      get getUserPostsFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get followUserFailureOrSuccessOption;
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith;
}
