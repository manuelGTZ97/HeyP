// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeedEventTearOff {
  const _$FeedEventTearOff();

// ignore: unused_element
  GetUserFeeds getUserFeeds(int offset) {
    return GetUserFeeds(
      offset,
    );
  }

// ignore: unused_element
  GetFeeds getFeeds(int offset) {
    return GetFeeds(
      offset,
    );
  }

// ignore: unused_element
  GetPosts getPosts(int userId) {
    return GetPosts(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedEvent = _$FeedEventTearOff();

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserFeeds(int offset),
    @required Result getFeeds(int offset),
    @required Result getPosts(int userId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserFeeds(int offset),
    Result getFeeds(int offset),
    Result getPosts(int userId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserFeeds(GetUserFeeds value),
    @required Result getFeeds(GetFeeds value),
    @required Result getPosts(GetPosts value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserFeeds(GetUserFeeds value),
    Result getFeeds(GetFeeds value),
    Result getPosts(GetPosts value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class $GetUserFeedsCopyWith<$Res> {
  factory $GetUserFeedsCopyWith(
          GetUserFeeds value, $Res Function(GetUserFeeds) then) =
      _$GetUserFeedsCopyWithImpl<$Res>;
  $Res call({int offset});
}

/// @nodoc
class _$GetUserFeedsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements $GetUserFeedsCopyWith<$Res> {
  _$GetUserFeedsCopyWithImpl(
      GetUserFeeds _value, $Res Function(GetUserFeeds) _then)
      : super(_value, (v) => _then(v as GetUserFeeds));

  @override
  GetUserFeeds get _value => super._value as GetUserFeeds;

  @override
  $Res call({
    Object offset = freezed,
  }) {
    return _then(GetUserFeeds(
      offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$GetUserFeeds implements GetUserFeeds {
  const _$GetUserFeeds(this.offset) : assert(offset != null);

  @override
  final int offset;

  @override
  String toString() {
    return 'FeedEvent.getUserFeeds(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserFeeds &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offset);

  @override
  $GetUserFeedsCopyWith<GetUserFeeds> get copyWith =>
      _$GetUserFeedsCopyWithImpl<GetUserFeeds>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserFeeds(int offset),
    @required Result getFeeds(int offset),
    @required Result getPosts(int userId),
  }) {
    assert(getUserFeeds != null);
    assert(getFeeds != null);
    assert(getPosts != null);
    return getUserFeeds(offset);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserFeeds(int offset),
    Result getFeeds(int offset),
    Result getPosts(int userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserFeeds != null) {
      return getUserFeeds(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserFeeds(GetUserFeeds value),
    @required Result getFeeds(GetFeeds value),
    @required Result getPosts(GetPosts value),
  }) {
    assert(getUserFeeds != null);
    assert(getFeeds != null);
    assert(getPosts != null);
    return getUserFeeds(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserFeeds(GetUserFeeds value),
    Result getFeeds(GetFeeds value),
    Result getPosts(GetPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserFeeds != null) {
      return getUserFeeds(this);
    }
    return orElse();
  }
}

abstract class GetUserFeeds implements FeedEvent {
  const factory GetUserFeeds(int offset) = _$GetUserFeeds;

  int get offset;
  $GetUserFeedsCopyWith<GetUserFeeds> get copyWith;
}

/// @nodoc
abstract class $GetFeedsCopyWith<$Res> {
  factory $GetFeedsCopyWith(GetFeeds value, $Res Function(GetFeeds) then) =
      _$GetFeedsCopyWithImpl<$Res>;
  $Res call({int offset});
}

/// @nodoc
class _$GetFeedsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements $GetFeedsCopyWith<$Res> {
  _$GetFeedsCopyWithImpl(GetFeeds _value, $Res Function(GetFeeds) _then)
      : super(_value, (v) => _then(v as GetFeeds));

  @override
  GetFeeds get _value => super._value as GetFeeds;

  @override
  $Res call({
    Object offset = freezed,
  }) {
    return _then(GetFeeds(
      offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$GetFeeds implements GetFeeds {
  const _$GetFeeds(this.offset) : assert(offset != null);

  @override
  final int offset;

  @override
  String toString() {
    return 'FeedEvent.getFeeds(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeeds &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offset);

  @override
  $GetFeedsCopyWith<GetFeeds> get copyWith =>
      _$GetFeedsCopyWithImpl<GetFeeds>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserFeeds(int offset),
    @required Result getFeeds(int offset),
    @required Result getPosts(int userId),
  }) {
    assert(getUserFeeds != null);
    assert(getFeeds != null);
    assert(getPosts != null);
    return getFeeds(offset);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserFeeds(int offset),
    Result getFeeds(int offset),
    Result getPosts(int userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFeeds != null) {
      return getFeeds(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserFeeds(GetUserFeeds value),
    @required Result getFeeds(GetFeeds value),
    @required Result getPosts(GetPosts value),
  }) {
    assert(getUserFeeds != null);
    assert(getFeeds != null);
    assert(getPosts != null);
    return getFeeds(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserFeeds(GetUserFeeds value),
    Result getFeeds(GetFeeds value),
    Result getPosts(GetPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFeeds != null) {
      return getFeeds(this);
    }
    return orElse();
  }
}

abstract class GetFeeds implements FeedEvent {
  const factory GetFeeds(int offset) = _$GetFeeds;

  int get offset;
  $GetFeedsCopyWith<GetFeeds> get copyWith;
}

/// @nodoc
abstract class $GetPostsCopyWith<$Res> {
  factory $GetPostsCopyWith(GetPosts value, $Res Function(GetPosts) then) =
      _$GetPostsCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$GetPostsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements $GetPostsCopyWith<$Res> {
  _$GetPostsCopyWithImpl(GetPosts _value, $Res Function(GetPosts) _then)
      : super(_value, (v) => _then(v as GetPosts));

  @override
  GetPosts get _value => super._value as GetPosts;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(GetPosts(
      userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
class _$GetPosts implements GetPosts {
  const _$GetPosts(this.userId) : assert(userId != null);

  @override
  final int userId;

  @override
  String toString() {
    return 'FeedEvent.getPosts(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPosts &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $GetPostsCopyWith<GetPosts> get copyWith =>
      _$GetPostsCopyWithImpl<GetPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserFeeds(int offset),
    @required Result getFeeds(int offset),
    @required Result getPosts(int userId),
  }) {
    assert(getUserFeeds != null);
    assert(getFeeds != null);
    assert(getPosts != null);
    return getPosts(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserFeeds(int offset),
    Result getFeeds(int offset),
    Result getPosts(int userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPosts != null) {
      return getPosts(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserFeeds(GetUserFeeds value),
    @required Result getFeeds(GetFeeds value),
    @required Result getPosts(GetPosts value),
  }) {
    assert(getUserFeeds != null);
    assert(getFeeds != null);
    assert(getPosts != null);
    return getPosts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserFeeds(GetUserFeeds value),
    Result getFeeds(GetFeeds value),
    Result getPosts(GetPosts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPosts != null) {
      return getPosts(this);
    }
    return orElse();
  }
}

abstract class GetPosts implements FeedEvent {
  const factory GetPosts(int userId) = _$GetPosts;

  int get userId;
  $GetPostsCopyWith<GetPosts> get copyWith;
}

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

// ignore: unused_element
  _FeedState call(
      {@required
          Option<Either<ServerFailure, DetailFeeds>> userFeedsFailureOrSuccess,
      @required
          Option<Either<ServerFailure, DetailFeeds>>
              allFeedsFailureOrSuccess}) {
    return _FeedState(
      userFeedsFailureOrSuccess: userFeedsFailureOrSuccess,
      allFeedsFailureOrSuccess: allFeedsFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  Option<Either<ServerFailure, DetailFeeds>> get userFeedsFailureOrSuccess;
  Option<Either<ServerFailure, DetailFeeds>> get allFeedsFailureOrSuccess;

  $FeedStateCopyWith<FeedState> get copyWith;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ServerFailure, DetailFeeds>> userFeedsFailureOrSuccess,
      Option<Either<ServerFailure, DetailFeeds>> allFeedsFailureOrSuccess});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object userFeedsFailureOrSuccess = freezed,
    Object allFeedsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userFeedsFailureOrSuccess: userFeedsFailureOrSuccess == freezed
          ? _value.userFeedsFailureOrSuccess
          : userFeedsFailureOrSuccess
              as Option<Either<ServerFailure, DetailFeeds>>,
      allFeedsFailureOrSuccess: allFeedsFailureOrSuccess == freezed
          ? _value.allFeedsFailureOrSuccess
          : allFeedsFailureOrSuccess
              as Option<Either<ServerFailure, DetailFeeds>>,
    ));
  }
}

/// @nodoc
abstract class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(
          _FeedState value, $Res Function(_FeedState) then) =
      __$FeedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ServerFailure, DetailFeeds>> userFeedsFailureOrSuccess,
      Option<Either<ServerFailure, DetailFeeds>> allFeedsFailureOrSuccess});
}

/// @nodoc
class __$FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(_FeedState _value, $Res Function(_FeedState) _then)
      : super(_value, (v) => _then(v as _FeedState));

  @override
  _FeedState get _value => super._value as _FeedState;

  @override
  $Res call({
    Object userFeedsFailureOrSuccess = freezed,
    Object allFeedsFailureOrSuccess = freezed,
  }) {
    return _then(_FeedState(
      userFeedsFailureOrSuccess: userFeedsFailureOrSuccess == freezed
          ? _value.userFeedsFailureOrSuccess
          : userFeedsFailureOrSuccess
              as Option<Either<ServerFailure, DetailFeeds>>,
      allFeedsFailureOrSuccess: allFeedsFailureOrSuccess == freezed
          ? _value.allFeedsFailureOrSuccess
          : allFeedsFailureOrSuccess
              as Option<Either<ServerFailure, DetailFeeds>>,
    ));
  }
}

/// @nodoc
class _$_FeedState implements _FeedState {
  const _$_FeedState(
      {@required this.userFeedsFailureOrSuccess,
      @required this.allFeedsFailureOrSuccess})
      : assert(userFeedsFailureOrSuccess != null),
        assert(allFeedsFailureOrSuccess != null);

  @override
  final Option<Either<ServerFailure, DetailFeeds>> userFeedsFailureOrSuccess;
  @override
  final Option<Either<ServerFailure, DetailFeeds>> allFeedsFailureOrSuccess;

  @override
  String toString() {
    return 'FeedState(userFeedsFailureOrSuccess: $userFeedsFailureOrSuccess, allFeedsFailureOrSuccess: $allFeedsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedState &&
            (identical(other.userFeedsFailureOrSuccess,
                    userFeedsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.userFeedsFailureOrSuccess,
                    userFeedsFailureOrSuccess)) &&
            (identical(
                    other.allFeedsFailureOrSuccess, allFeedsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.allFeedsFailureOrSuccess, allFeedsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userFeedsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(allFeedsFailureOrSuccess);

  @override
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {@required
          Option<Either<ServerFailure, DetailFeeds>> userFeedsFailureOrSuccess,
      @required
          Option<Either<ServerFailure, DetailFeeds>>
              allFeedsFailureOrSuccess}) = _$_FeedState;

  @override
  Option<Either<ServerFailure, DetailFeeds>> get userFeedsFailureOrSuccess;
  @override
  Option<Either<ServerFailure, DetailFeeds>> get allFeedsFailureOrSuccess;
  @override
  _$FeedStateCopyWith<_FeedState> get copyWith;
}
