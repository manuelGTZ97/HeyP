// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

// ignore: unused_element
  GetNews getNews() {
    return const GetNews();
  }
}

/// @nodoc
// ignore: unused_element
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNews(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNews(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNews(GetNews value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNews(GetNews value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $GetNewsCopyWith<$Res> {
  factory $GetNewsCopyWith(GetNews value, $Res Function(GetNews) then) =
      _$GetNewsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNewsCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $GetNewsCopyWith<$Res> {
  _$GetNewsCopyWithImpl(GetNews _value, $Res Function(GetNews) _then)
      : super(_value, (v) => _then(v as GetNews));

  @override
  GetNews get _value => super._value as GetNews;
}

/// @nodoc
class _$GetNews with DiagnosticableTreeMixin implements GetNews {
  const _$GetNews();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsEvent.getNews()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NewsEvent.getNews'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getNews(),
  }) {
    assert(getNews != null);
    return getNews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getNews(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNews != null) {
      return getNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getNews(GetNews value),
  }) {
    assert(getNews != null);
    return getNews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getNews(GetNews value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getNews != null) {
      return getNews(this);
    }
    return orElse();
  }
}

abstract class GetNews implements NewsEvent {
  const factory GetNews() = _$GetNews;
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _NewsState call(
      {@required
          Option<Either<ServerFailure, DetailNews>> newsFailureOrSuccess}) {
    return _NewsState(
      newsFailureOrSuccess: newsFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  Option<Either<ServerFailure, DetailNews>> get newsFailureOrSuccess;

  $NewsStateCopyWith<NewsState> get copyWith;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call({Option<Either<ServerFailure, DetailNews>> newsFailureOrSuccess});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object newsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      newsFailureOrSuccess: newsFailureOrSuccess == freezed
          ? _value.newsFailureOrSuccess
          : newsFailureOrSuccess as Option<Either<ServerFailure, DetailNews>>,
    ));
  }
}

/// @nodoc
abstract class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) then) =
      __$NewsStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<ServerFailure, DetailNews>> newsFailureOrSuccess});
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(_NewsState _value, $Res Function(_NewsState) _then)
      : super(_value, (v) => _then(v as _NewsState));

  @override
  _NewsState get _value => super._value as _NewsState;

  @override
  $Res call({
    Object newsFailureOrSuccess = freezed,
  }) {
    return _then(_NewsState(
      newsFailureOrSuccess: newsFailureOrSuccess == freezed
          ? _value.newsFailureOrSuccess
          : newsFailureOrSuccess as Option<Either<ServerFailure, DetailNews>>,
    ));
  }
}

/// @nodoc
class _$_NewsState with DiagnosticableTreeMixin implements _NewsState {
  const _$_NewsState({@required this.newsFailureOrSuccess})
      : assert(newsFailureOrSuccess != null);

  @override
  final Option<Either<ServerFailure, DetailNews>> newsFailureOrSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsState(newsFailureOrSuccess: $newsFailureOrSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsState'))
      ..add(DiagnosticsProperty('newsFailureOrSuccess', newsFailureOrSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsState &&
            (identical(other.newsFailureOrSuccess, newsFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.newsFailureOrSuccess, newsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsFailureOrSuccess);

  @override
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
          {@required
              Option<Either<ServerFailure, DetailNews>> newsFailureOrSuccess}) =
      _$_NewsState;

  @override
  Option<Either<ServerFailure, DetailNews>> get newsFailureOrSuccess;
  @override
  _$NewsStateCopyWith<_NewsState> get copyWith;
}
