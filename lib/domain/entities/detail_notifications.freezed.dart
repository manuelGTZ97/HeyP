// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailNotifications _$DetailNotificationsFromJson(Map<String, dynamic> json) {
  return _DetailNotifications.fromJson(json);
}

/// @nodoc
class _$DetailNotificationsTearOff {
  const _$DetailNotificationsTearOff();

// ignore: unused_element
  _DetailNotifications call(
      {bool success,
      @nullable String message,
      @nullable List<Notification> notifications}) {
    return _DetailNotifications(
      success: success,
      message: message,
      notifications: notifications,
    );
  }

// ignore: unused_element
  DetailNotifications fromJson(Map<String, Object> json) {
    return DetailNotifications.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailNotifications = _$DetailNotificationsTearOff();

/// @nodoc
mixin _$DetailNotifications {
  bool get success;
  @nullable
  String get message;
  @nullable
  List<Notification> get notifications;

  Map<String, dynamic> toJson();
  $DetailNotificationsCopyWith<DetailNotifications> get copyWith;
}

/// @nodoc
abstract class $DetailNotificationsCopyWith<$Res> {
  factory $DetailNotificationsCopyWith(
          DetailNotifications value, $Res Function(DetailNotifications) then) =
      _$DetailNotificationsCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      @nullable String message,
      @nullable List<Notification> notifications});
}

/// @nodoc
class _$DetailNotificationsCopyWithImpl<$Res>
    implements $DetailNotificationsCopyWith<$Res> {
  _$DetailNotificationsCopyWithImpl(this._value, this._then);

  final DetailNotifications _value;
  // ignore: unused_field
  final $Res Function(DetailNotifications) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object notifications = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<Notification>,
    ));
  }
}

/// @nodoc
abstract class _$DetailNotificationsCopyWith<$Res>
    implements $DetailNotificationsCopyWith<$Res> {
  factory _$DetailNotificationsCopyWith(_DetailNotifications value,
          $Res Function(_DetailNotifications) then) =
      __$DetailNotificationsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      @nullable String message,
      @nullable List<Notification> notifications});
}

/// @nodoc
class __$DetailNotificationsCopyWithImpl<$Res>
    extends _$DetailNotificationsCopyWithImpl<$Res>
    implements _$DetailNotificationsCopyWith<$Res> {
  __$DetailNotificationsCopyWithImpl(
      _DetailNotifications _value, $Res Function(_DetailNotifications) _then)
      : super(_value, (v) => _then(v as _DetailNotifications));

  @override
  _DetailNotifications get _value => super._value as _DetailNotifications;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
    Object notifications = freezed,
  }) {
    return _then(_DetailNotifications(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<Notification>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailNotifications implements _DetailNotifications {
  const _$_DetailNotifications(
      {this.success, @nullable this.message, @nullable this.notifications});

  factory _$_DetailNotifications.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailNotificationsFromJson(json);

  @override
  final bool success;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final List<Notification> notifications;

  @override
  String toString() {
    return 'DetailNotifications(success: $success, message: $message, notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailNotifications &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(notifications);

  @override
  _$DetailNotificationsCopyWith<_DetailNotifications> get copyWith =>
      __$DetailNotificationsCopyWithImpl<_DetailNotifications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailNotificationsToJson(this);
  }
}

abstract class _DetailNotifications implements DetailNotifications {
  const factory _DetailNotifications(
      {bool success,
      @nullable String message,
      @nullable List<Notification> notifications}) = _$_DetailNotifications;

  factory _DetailNotifications.fromJson(Map<String, dynamic> json) =
      _$_DetailNotifications.fromJson;

  @override
  bool get success;
  @override
  @nullable
  String get message;
  @override
  @nullable
  List<Notification> get notifications;
  @override
  _$DetailNotificationsCopyWith<_DetailNotifications> get copyWith;
}
