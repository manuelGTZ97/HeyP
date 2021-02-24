// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentEventTearOff {
  const _$CommentEventTearOff();

// ignore: unused_element
  CommentChanged commentChanged(String commentStr) {
    return CommentChanged(
      commentStr,
    );
  }

// ignore: unused_element
  AddComment addComment(int id) {
    return AddComment(
      id,
    );
  }

// ignore: unused_element
  DeleteComment deleteComment(int id) {
    return DeleteComment(
      id,
    );
  }

// ignore: unused_element
  GetComments getComments(int id) {
    return GetComments(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentEvent = _$CommentEventTearOff();

/// @nodoc
mixin _$CommentEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result commentChanged(String commentStr),
    @required Result addComment(int id),
    @required Result deleteComment(int id),
    @required Result getComments(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result commentChanged(String commentStr),
    Result addComment(int id),
    Result deleteComment(int id),
    Result getComments(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result commentChanged(CommentChanged value),
    @required Result addComment(AddComment value),
    @required Result deleteComment(DeleteComment value),
    @required Result getComments(GetComments value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result commentChanged(CommentChanged value),
    Result addComment(AddComment value),
    Result deleteComment(DeleteComment value),
    Result getComments(GetComments value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res> implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  final CommentEvent _value;
  // ignore: unused_field
  final $Res Function(CommentEvent) _then;
}

/// @nodoc
abstract class $CommentChangedCopyWith<$Res> {
  factory $CommentChangedCopyWith(
          CommentChanged value, $Res Function(CommentChanged) then) =
      _$CommentChangedCopyWithImpl<$Res>;
  $Res call({String commentStr});
}

/// @nodoc
class _$CommentChangedCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
    implements $CommentChangedCopyWith<$Res> {
  _$CommentChangedCopyWithImpl(
      CommentChanged _value, $Res Function(CommentChanged) _then)
      : super(_value, (v) => _then(v as CommentChanged));

  @override
  CommentChanged get _value => super._value as CommentChanged;

  @override
  $Res call({
    Object commentStr = freezed,
  }) {
    return _then(CommentChanged(
      commentStr == freezed ? _value.commentStr : commentStr as String,
    ));
  }
}

/// @nodoc
class _$CommentChanged implements CommentChanged {
  const _$CommentChanged(this.commentStr) : assert(commentStr != null);

  @override
  final String commentStr;

  @override
  String toString() {
    return 'CommentEvent.commentChanged(commentStr: $commentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentChanged &&
            (identical(other.commentStr, commentStr) ||
                const DeepCollectionEquality()
                    .equals(other.commentStr, commentStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commentStr);

  @override
  $CommentChangedCopyWith<CommentChanged> get copyWith =>
      _$CommentChangedCopyWithImpl<CommentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result commentChanged(String commentStr),
    @required Result addComment(int id),
    @required Result deleteComment(int id),
    @required Result getComments(int id),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return commentChanged(commentStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result commentChanged(String commentStr),
    Result addComment(int id),
    Result deleteComment(int id),
    Result getComments(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentChanged != null) {
      return commentChanged(commentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result commentChanged(CommentChanged value),
    @required Result addComment(AddComment value),
    @required Result deleteComment(DeleteComment value),
    @required Result getComments(GetComments value),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result commentChanged(CommentChanged value),
    Result addComment(AddComment value),
    Result deleteComment(DeleteComment value),
    Result getComments(GetComments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class CommentChanged implements CommentEvent {
  const factory CommentChanged(String commentStr) = _$CommentChanged;

  String get commentStr;
  $CommentChangedCopyWith<CommentChanged> get copyWith;
}

/// @nodoc
abstract class $AddCommentCopyWith<$Res> {
  factory $AddCommentCopyWith(
          AddComment value, $Res Function(AddComment) then) =
      _$AddCommentCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$AddCommentCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements $AddCommentCopyWith<$Res> {
  _$AddCommentCopyWithImpl(AddComment _value, $Res Function(AddComment) _then)
      : super(_value, (v) => _then(v as AddComment));

  @override
  AddComment get _value => super._value as AddComment;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(AddComment(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$AddComment implements AddComment {
  const _$AddComment(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'CommentEvent.addComment(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $AddCommentCopyWith<AddComment> get copyWith =>
      _$AddCommentCopyWithImpl<AddComment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result commentChanged(String commentStr),
    @required Result addComment(int id),
    @required Result deleteComment(int id),
    @required Result getComments(int id),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return addComment(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result commentChanged(String commentStr),
    Result addComment(int id),
    Result deleteComment(int id),
    Result getComments(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addComment != null) {
      return addComment(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result commentChanged(CommentChanged value),
    @required Result addComment(AddComment value),
    @required Result deleteComment(DeleteComment value),
    @required Result getComments(GetComments value),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result commentChanged(CommentChanged value),
    Result addComment(AddComment value),
    Result deleteComment(DeleteComment value),
    Result getComments(GetComments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class AddComment implements CommentEvent {
  const factory AddComment(int id) = _$AddComment;

  int get id;
  $AddCommentCopyWith<AddComment> get copyWith;
}

/// @nodoc
abstract class $DeleteCommentCopyWith<$Res> {
  factory $DeleteCommentCopyWith(
          DeleteComment value, $Res Function(DeleteComment) then) =
      _$DeleteCommentCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DeleteCommentCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements $DeleteCommentCopyWith<$Res> {
  _$DeleteCommentCopyWithImpl(
      DeleteComment _value, $Res Function(DeleteComment) _then)
      : super(_value, (v) => _then(v as DeleteComment));

  @override
  DeleteComment get _value => super._value as DeleteComment;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(DeleteComment(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$DeleteComment implements DeleteComment {
  const _$DeleteComment(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'CommentEvent.deleteComment(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $DeleteCommentCopyWith<DeleteComment> get copyWith =>
      _$DeleteCommentCopyWithImpl<DeleteComment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result commentChanged(String commentStr),
    @required Result addComment(int id),
    @required Result deleteComment(int id),
    @required Result getComments(int id),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return deleteComment(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result commentChanged(String commentStr),
    Result addComment(int id),
    Result deleteComment(int id),
    Result getComments(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteComment != null) {
      return deleteComment(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result commentChanged(CommentChanged value),
    @required Result addComment(AddComment value),
    @required Result deleteComment(DeleteComment value),
    @required Result getComments(GetComments value),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result commentChanged(CommentChanged value),
    Result addComment(AddComment value),
    Result deleteComment(DeleteComment value),
    Result getComments(GetComments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class DeleteComment implements CommentEvent {
  const factory DeleteComment(int id) = _$DeleteComment;

  int get id;
  $DeleteCommentCopyWith<DeleteComment> get copyWith;
}

/// @nodoc
abstract class $GetCommentsCopyWith<$Res> {
  factory $GetCommentsCopyWith(
          GetComments value, $Res Function(GetComments) then) =
      _$GetCommentsCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$GetCommentsCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements $GetCommentsCopyWith<$Res> {
  _$GetCommentsCopyWithImpl(
      GetComments _value, $Res Function(GetComments) _then)
      : super(_value, (v) => _then(v as GetComments));

  @override
  GetComments get _value => super._value as GetComments;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetComments(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$GetComments implements GetComments {
  const _$GetComments(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'CommentEvent.getComments(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetComments &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetCommentsCopyWith<GetComments> get copyWith =>
      _$GetCommentsCopyWithImpl<GetComments>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result commentChanged(String commentStr),
    @required Result addComment(int id),
    @required Result deleteComment(int id),
    @required Result getComments(int id),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return getComments(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result commentChanged(String commentStr),
    Result addComment(int id),
    Result deleteComment(int id),
    Result getComments(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getComments != null) {
      return getComments(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result commentChanged(CommentChanged value),
    @required Result addComment(AddComment value),
    @required Result deleteComment(DeleteComment value),
    @required Result getComments(GetComments value),
  }) {
    assert(commentChanged != null);
    assert(addComment != null);
    assert(deleteComment != null);
    assert(getComments != null);
    return getComments(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result commentChanged(CommentChanged value),
    Result addComment(AddComment value),
    Result deleteComment(DeleteComment value),
    Result getComments(GetComments value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getComments != null) {
      return getComments(this);
    }
    return orElse();
  }
}

abstract class GetComments implements CommentEvent {
  const factory GetComments(int id) = _$GetComments;

  int get id;
  $GetCommentsCopyWith<GetComments> get copyWith;
}

/// @nodoc
class _$CommentStateTearOff {
  const _$CommentStateTearOff();

// ignore: unused_element
  _CommentState call(
      {@required
          StringNotEmpty comment,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailComments>>
              getCommentsFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              addCommentFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              deleteCommentFailureOrSuccessOption}) {
    return _CommentState(
      comment: comment,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      getCommentsFailureOrSuccessOption: getCommentsFailureOrSuccessOption,
      addCommentFailureOrSuccessOption: addCommentFailureOrSuccessOption,
      deleteCommentFailureOrSuccessOption: deleteCommentFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentState = _$CommentStateTearOff();

/// @nodoc
mixin _$CommentState {
  StringNotEmpty get comment;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ServerFailure, DetailComments>>
      get getCommentsFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>>
      get addCommentFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>>
      get deleteCommentFailureOrSuccessOption;

  $CommentStateCopyWith<CommentState> get copyWith;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res>;
  $Res call(
      {StringNotEmpty comment,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailComments>>
          getCommentsFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          addCommentFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          deleteCommentFailureOrSuccessOption});
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res> implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  final CommentState _value;
  // ignore: unused_field
  final $Res Function(CommentState) _then;

  @override
  $Res call({
    Object comment = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object getCommentsFailureOrSuccessOption = freezed,
    Object addCommentFailureOrSuccessOption = freezed,
    Object deleteCommentFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as StringNotEmpty,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      getCommentsFailureOrSuccessOption:
          getCommentsFailureOrSuccessOption == freezed
              ? _value.getCommentsFailureOrSuccessOption
              : getCommentsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailComments>>,
      addCommentFailureOrSuccessOption:
          addCommentFailureOrSuccessOption == freezed
              ? _value.addCommentFailureOrSuccessOption
              : addCommentFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
      deleteCommentFailureOrSuccessOption:
          deleteCommentFailureOrSuccessOption == freezed
              ? _value.deleteCommentFailureOrSuccessOption
              : deleteCommentFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$CommentStateCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$CommentStateCopyWith(
          _CommentState value, $Res Function(_CommentState) then) =
      __$CommentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StringNotEmpty comment,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, DetailComments>>
          getCommentsFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          addCommentFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>>
          deleteCommentFailureOrSuccessOption});
}

/// @nodoc
class __$CommentStateCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
    implements _$CommentStateCopyWith<$Res> {
  __$CommentStateCopyWithImpl(
      _CommentState _value, $Res Function(_CommentState) _then)
      : super(_value, (v) => _then(v as _CommentState));

  @override
  _CommentState get _value => super._value as _CommentState;

  @override
  $Res call({
    Object comment = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object getCommentsFailureOrSuccessOption = freezed,
    Object addCommentFailureOrSuccessOption = freezed,
    Object deleteCommentFailureOrSuccessOption = freezed,
  }) {
    return _then(_CommentState(
      comment: comment == freezed ? _value.comment : comment as StringNotEmpty,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      getCommentsFailureOrSuccessOption:
          getCommentsFailureOrSuccessOption == freezed
              ? _value.getCommentsFailureOrSuccessOption
              : getCommentsFailureOrSuccessOption
                  as Option<Either<ServerFailure, DetailComments>>,
      addCommentFailureOrSuccessOption:
          addCommentFailureOrSuccessOption == freezed
              ? _value.addCommentFailureOrSuccessOption
              : addCommentFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
      deleteCommentFailureOrSuccessOption:
          deleteCommentFailureOrSuccessOption == freezed
              ? _value.deleteCommentFailureOrSuccessOption
              : deleteCommentFailureOrSuccessOption
                  as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc
class _$_CommentState implements _CommentState {
  const _$_CommentState(
      {@required this.comment,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.getCommentsFailureOrSuccessOption,
      @required this.addCommentFailureOrSuccessOption,
      @required this.deleteCommentFailureOrSuccessOption})
      : assert(comment != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(getCommentsFailureOrSuccessOption != null),
        assert(addCommentFailureOrSuccessOption != null),
        assert(deleteCommentFailureOrSuccessOption != null);

  @override
  final StringNotEmpty comment;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ServerFailure, DetailComments>>
      getCommentsFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      addCommentFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      deleteCommentFailureOrSuccessOption;

  @override
  String toString() {
    return 'CommentState(comment: $comment, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, getCommentsFailureOrSuccessOption: $getCommentsFailureOrSuccessOption, addCommentFailureOrSuccessOption: $addCommentFailureOrSuccessOption, deleteCommentFailureOrSuccessOption: $deleteCommentFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentState &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.getCommentsFailureOrSuccessOption,
                    getCommentsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getCommentsFailureOrSuccessOption,
                    getCommentsFailureOrSuccessOption)) &&
            (identical(other.addCommentFailureOrSuccessOption,
                    addCommentFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.addCommentFailureOrSuccessOption,
                    addCommentFailureOrSuccessOption)) &&
            (identical(other.deleteCommentFailureOrSuccessOption,
                    deleteCommentFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteCommentFailureOrSuccessOption,
                    deleteCommentFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(getCommentsFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(addCommentFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteCommentFailureOrSuccessOption);

  @override
  _$CommentStateCopyWith<_CommentState> get copyWith =>
      __$CommentStateCopyWithImpl<_CommentState>(this, _$identity);
}

abstract class _CommentState implements CommentState {
  const factory _CommentState(
      {@required
          StringNotEmpty comment,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, DetailComments>>
              getCommentsFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              addCommentFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              deleteCommentFailureOrSuccessOption}) = _$_CommentState;

  @override
  StringNotEmpty get comment;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ServerFailure, DetailComments>>
      get getCommentsFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get addCommentFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>>
      get deleteCommentFailureOrSuccessOption;
  @override
  _$CommentStateCopyWith<_CommentState> get copyWith;
}
