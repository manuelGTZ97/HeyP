// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

// ignore: unused_element
  GetNotifications getNotifications() {
    return const GetNotifications();
  }

// ignore: unused_element
  ReadNotification readNotification(int id) {
    return ReadNotification(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNotifications(),
    @required Result readNotification(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNotifications(),
    Result readNotification(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNotifications(GetNotifications value),
    @required Result readNotification(ReadNotification value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNotifications(GetNotifications value),
    Result readNotification(ReadNotification value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class $GetNotificationsCopyWith<$Res> {
  factory $GetNotificationsCopyWith(
          GetNotifications value, $Res Function(GetNotifications) then) =
      _$GetNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNotificationsCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $GetNotificationsCopyWith<$Res> {
  _$GetNotificationsCopyWithImpl(
      GetNotifications _value, $Res Function(GetNotifications) _then)
      : super(_value, (v) => _then(v as GetNotifications));

  @override
  GetNotifications get _value => super._value as GetNotifications;
}

/// @nodoc
class _$GetNotifications implements GetNotifications {
  const _$GetNotifications();

  @override
  String toString() {
    return 'NotificationEvent.getNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNotifications(),
    @required Result readNotification(int id),
  }) {
    assert(getNotifications != null);
    assert(readNotification != null);
    return getNotifications();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNotifications(),
    Result readNotification(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNotifications != null) {
      return getNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNotifications(GetNotifications value),
    @required Result readNotification(ReadNotification value),
  }) {
    assert(getNotifications != null);
    assert(readNotification != null);
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNotifications(GetNotifications value),
    Result readNotification(ReadNotification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotifications implements NotificationEvent {
  const factory GetNotifications() = _$GetNotifications;
}

/// @nodoc
abstract class $ReadNotificationCopyWith<$Res> {
  factory $ReadNotificationCopyWith(
          ReadNotification value, $Res Function(ReadNotification) then) =
      _$ReadNotificationCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ReadNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $ReadNotificationCopyWith<$Res> {
  _$ReadNotificationCopyWithImpl(
      ReadNotification _value, $Res Function(ReadNotification) _then)
      : super(_value, (v) => _then(v as ReadNotification));

  @override
  ReadNotification get _value => super._value as ReadNotification;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ReadNotification(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$ReadNotification implements ReadNotification {
  const _$ReadNotification(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'NotificationEvent.readNotification(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReadNotification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ReadNotificationCopyWith<ReadNotification> get copyWith =>
      _$ReadNotificationCopyWithImpl<ReadNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNotifications(),
    @required Result readNotification(int id),
  }) {
    assert(getNotifications != null);
    assert(readNotification != null);
    return readNotification(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNotifications(),
    Result readNotification(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (readNotification != null) {
      return readNotification(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNotifications(GetNotifications value),
    @required Result readNotification(ReadNotification value),
  }) {
    assert(getNotifications != null);
    assert(readNotification != null);
    return readNotification(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNotifications(GetNotifications value),
    Result readNotification(ReadNotification value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (readNotification != null) {
      return readNotification(this);
    }
    return orElse();
  }
}

abstract class ReadNotification implements NotificationEvent {
  const factory ReadNotification(int id) = _$ReadNotification;

  int get id;
  $ReadNotificationCopyWith<ReadNotification> get copyWith;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

// ignore: unused_element
  _NotificationState call(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailNotifications>>
              getNotificationsFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              readNotificationFailureOrSuccessOption}) {
    return _NotificationState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      getNotificationsFailureOrSuccessOption:
          getNotificationsFailureOrSuccessOption,
      readNotificationFailureOrSuccessOption:
          readNotificationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ServerFailure, DetailNotifications>>
      get getNotificationsFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>>
      get readNotificationFailureOrSuccessOption;

  $NotificationStateCopyWith<NotificationState> get copyWith;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailNotifications>>
          getNotificationsFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          readNotificationFailureOrSuccessOption});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object getNotificationsFailureOrSuccessOption = freezed,
    Object readNotificationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      getNotificationsFailureOrSuccessOption:
          getNotificationsFailureOrSuccessOption == freezed
              ? _value.getNotificationsFailureOrSuccessOption
              : getNotificationsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailNotifications>>,
      readNotificationFailureOrSuccessOption:
          readNotificationFailureOrSuccessOption == freezed
              ? _value.readNotificationFailureOrSuccessOption
              : readNotificationFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) then) =
      __$NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailNotifications>>
          getNotificationsFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          readNotificationFailureOrSuccessOption});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(
      _NotificationState _value, $Res Function(_NotificationState) _then)
      : super(_value, (v) => _then(v as _NotificationState));

  @override
  _NotificationState get _value => super._value as _NotificationState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object getNotificationsFailureOrSuccessOption = freezed,
    Object readNotificationFailureOrSuccessOption = freezed,
  }) {
    return _then(_NotificationState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      getNotificationsFailureOrSuccessOption:
          getNotificationsFailureOrSuccessOption == freezed
              ? _value.getNotificationsFailureOrSuccessOption
              : getNotificationsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailNotifications>>,
      readNotificationFailureOrSuccessOption:
          readNotificationFailureOrSuccessOption == freezed
              ? _value.readNotificationFailureOrSuccessOption
              : readNotificationFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.getNotificationsFailureOrSuccessOption,
      @required this.readNotificationFailureOrSuccessOption})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(getNotificationsFailureOrSuccessOption != null),
        assert(readNotificationFailureOrSuccessOption != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ServerFailure, DetailNotifications>>
      getNotificationsFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      readNotificationFailureOrSuccessOption;

  @override
  String toString() {
    return 'NotificationState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, getNotificationsFailureOrSuccessOption: $getNotificationsFailureOrSuccessOption, readNotificationFailureOrSuccessOption: $readNotificationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.getNotificationsFailureOrSuccessOption,
                    getNotificationsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getNotificationsFailureOrSuccessOption,
                    getNotificationsFailureOrSuccessOption)) &&
            (identical(other.readNotificationFailureOrSuccessOption,
                    readNotificationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.readNotificationFailureOrSuccessOption,
                    readNotificationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality()
          .hash(getNotificationsFailureOrSuccessOption) ^
      const DeepCollectionEquality()
          .hash(readNotificationFailureOrSuccessOption);

  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailNotifications>>
              getNotificationsFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              readNotificationFailureOrSuccessOption}) = _$_NotificationState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ServerFailure, DetailNotifications>>
      get getNotificationsFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get readNotificationFailureOrSuccessOption;
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith;
}
