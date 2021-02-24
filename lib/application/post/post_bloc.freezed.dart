// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostEventTearOff {
  const _$PostEventTearOff();

// ignore: unused_element
  ImageChanged imageChanged(String imageStr) {
    return ImageChanged(
      imageStr,
    );
  }

// ignore: unused_element
  BodyChanged bodyChanged(String bodyStr) {
    return BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  AddPost addPost() {
    return const AddPost();
  }

// ignore: unused_element
  LikePost likePost(int id) {
    return LikePost(
      id,
    );
  }

// ignore: unused_element
  GetPost getPost(int id) {
    return GetPost(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostEvent = _$PostEventTearOff();

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result bodyChanged(String bodyStr),
    @required Result addPost(),
    @required Result likePost(int id),
    @required Result getPost(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result bodyChanged(String bodyStr),
    Result addPost(),
    Result likePost(int id),
    Result getPost(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result bodyChanged(BodyChanged value),
    @required Result addPost(AddPost value),
    @required Result likePost(LikePost value),
    @required Result getPost(GetPost value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result bodyChanged(BodyChanged value),
    Result addPost(AddPost value),
    Result likePost(LikePost value),
    Result getPost(GetPost value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;
}

/// @nodoc
abstract class $ImageChangedCopyWith<$Res> {
  factory $ImageChangedCopyWith(
          ImageChanged value, $Res Function(ImageChanged) then) =
      _$ImageChangedCopyWithImpl<$Res>;
  $Res call({String imageStr});
}

/// @nodoc
class _$ImageChangedCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
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
class _$ImageChanged implements ImageChanged {
  const _$ImageChanged(this.imageStr) : assert(imageStr != null);

  @override
  final String imageStr;

  @override
  String toString() {
    return 'PostEvent.imageChanged(imageStr: $imageStr)';
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
    @required Result bodyChanged(String bodyStr),
    @required Result addPost(),
    @required Result likePost(int id),
    @required Result getPost(int id),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return imageChanged(imageStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result bodyChanged(String bodyStr),
    Result addPost(),
    Result likePost(int id),
    Result getPost(int id),
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
    @required Result bodyChanged(BodyChanged value),
    @required Result addPost(AddPost value),
    @required Result likePost(LikePost value),
    @required Result getPost(GetPost value),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result bodyChanged(BodyChanged value),
    Result addPost(AddPost value),
    Result likePost(LikePost value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class ImageChanged implements PostEvent {
  const factory ImageChanged(String imageStr) = _$ImageChanged;

  String get imageStr;
  $ImageChangedCopyWith<ImageChanged> get copyWith;
}

/// @nodoc
abstract class $BodyChangedCopyWith<$Res> {
  factory $BodyChangedCopyWith(
          BodyChanged value, $Res Function(BodyChanged) then) =
      _$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class _$BodyChangedCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements $BodyChangedCopyWith<$Res> {
  _$BodyChangedCopyWithImpl(
      BodyChanged _value, $Res Function(BodyChanged) _then)
      : super(_value, (v) => _then(v as BodyChanged));

  @override
  BodyChanged get _value => super._value as BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

/// @nodoc
class _$BodyChanged implements BodyChanged {
  const _$BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'PostEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  $BodyChangedCopyWith<BodyChanged> get copyWith =>
      _$BodyChangedCopyWithImpl<BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result bodyChanged(String bodyStr),
    @required Result addPost(),
    @required Result likePost(int id),
    @required Result getPost(int id),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result bodyChanged(String bodyStr),
    Result addPost(),
    Result likePost(int id),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result bodyChanged(BodyChanged value),
    @required Result addPost(AddPost value),
    @required Result likePost(LikePost value),
    @required Result getPost(GetPost value),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result bodyChanged(BodyChanged value),
    Result addPost(AddPost value),
    Result likePost(LikePost value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class BodyChanged implements PostEvent {
  const factory BodyChanged(String bodyStr) = _$BodyChanged;

  String get bodyStr;
  $BodyChangedCopyWith<BodyChanged> get copyWith;
}

/// @nodoc
abstract class $AddPostCopyWith<$Res> {
  factory $AddPostCopyWith(AddPost value, $Res Function(AddPost) then) =
      _$AddPostCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements $AddPostCopyWith<$Res> {
  _$AddPostCopyWithImpl(AddPost _value, $Res Function(AddPost) _then)
      : super(_value, (v) => _then(v as AddPost));

  @override
  AddPost get _value => super._value as AddPost;
}

/// @nodoc
class _$AddPost implements AddPost {
  const _$AddPost();

  @override
  String toString() {
    return 'PostEvent.addPost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddPost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result bodyChanged(String bodyStr),
    @required Result addPost(),
    @required Result likePost(int id),
    @required Result getPost(int id),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return addPost();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result bodyChanged(String bodyStr),
    Result addPost(),
    Result likePost(int id),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addPost != null) {
      return addPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result bodyChanged(BodyChanged value),
    @required Result addPost(AddPost value),
    @required Result likePost(LikePost value),
    @required Result getPost(GetPost value),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return addPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result bodyChanged(BodyChanged value),
    Result addPost(AddPost value),
    Result likePost(LikePost value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addPost != null) {
      return addPost(this);
    }
    return orElse();
  }
}

abstract class AddPost implements PostEvent {
  const factory AddPost() = _$AddPost;
}

/// @nodoc
abstract class $LikePostCopyWith<$Res> {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) then) =
      _$LikePostCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$LikePostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(LikePost _value, $Res Function(LikePost) _then)
      : super(_value, (v) => _then(v as LikePost));

  @override
  LikePost get _value => super._value as LikePost;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(LikePost(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$LikePost implements LikePost {
  const _$LikePost(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'PostEvent.likePost(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikePost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $LikePostCopyWith<LikePost> get copyWith =>
      _$LikePostCopyWithImpl<LikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result bodyChanged(String bodyStr),
    @required Result addPost(),
    @required Result likePost(int id),
    @required Result getPost(int id),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return likePost(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result bodyChanged(String bodyStr),
    Result addPost(),
    Result likePost(int id),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result bodyChanged(BodyChanged value),
    @required Result addPost(AddPost value),
    @required Result likePost(LikePost value),
    @required Result getPost(GetPost value),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result bodyChanged(BodyChanged value),
    Result addPost(AddPost value),
    Result likePost(LikePost value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class LikePost implements PostEvent {
  const factory LikePost(int id) = _$LikePost;

  int get id;
  $LikePostCopyWith<LikePost> get copyWith;
}

/// @nodoc
abstract class $GetPostCopyWith<$Res> {
  factory $GetPostCopyWith(GetPost value, $Res Function(GetPost) then) =
      _$GetPostCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$GetPostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements $GetPostCopyWith<$Res> {
  _$GetPostCopyWithImpl(GetPost _value, $Res Function(GetPost) _then)
      : super(_value, (v) => _then(v as GetPost));

  @override
  GetPost get _value => super._value as GetPost;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetPost(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$GetPost implements GetPost {
  const _$GetPost(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'PostEvent.getPost(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetPostCopyWith<GetPost> get copyWith =>
      _$GetPostCopyWithImpl<GetPost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result imageChanged(String imageStr),
    @required Result bodyChanged(String bodyStr),
    @required Result addPost(),
    @required Result likePost(int id),
    @required Result getPost(int id),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return getPost(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result imageChanged(String imageStr),
    Result bodyChanged(String bodyStr),
    Result addPost(),
    Result likePost(int id),
    Result getPost(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPost != null) {
      return getPost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result imageChanged(ImageChanged value),
    @required Result bodyChanged(BodyChanged value),
    @required Result addPost(AddPost value),
    @required Result likePost(LikePost value),
    @required Result getPost(GetPost value),
  }) {
    assert(imageChanged != null);
    assert(bodyChanged != null);
    assert(addPost != null);
    assert(likePost != null);
    assert(getPost != null);
    return getPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result imageChanged(ImageChanged value),
    Result bodyChanged(BodyChanged value),
    Result addPost(AddPost value),
    Result likePost(LikePost value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPost != null) {
      return getPost(this);
    }
    return orElse();
  }
}

abstract class GetPost implements PostEvent {
  const factory GetPost(int id) = _$GetPost;

  int get id;
  $GetPostCopyWith<GetPost> get copyWith;
}

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

// ignore: unused_element
  _PostState call(
      {@required
          String image,
      @required
          String body,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              addPostFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              likePostFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, DetailPost>>
              getPostFailureOrSuccessOption}) {
    return _PostState(
      image: image,
      body: body,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      addPostFailureOrSuccessOption: addPostFailureOrSuccessOption,
      likePostFailureOrSuccessOption: likePostFailureOrSuccessOption,
      getPostFailureOrSuccessOption: getPostFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  String get image;
  String get body;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ServerFailure, ApiResponse>> get addPostFailureOrSuccessOption;
  Option<Either<ServerFailure, ApiResponse>> get likePostFailureOrSuccessOption;
  Option<Either<ServerFailure, DetailPost>> get getPostFailureOrSuccessOption;

  $PostStateCopyWith<PostState> get copyWith;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call(
      {String image,
      String body,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, ApiResponse>> addPostFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>> likePostFailureOrSuccessOption,
      Option<Either<ServerFailure, DetailPost>> getPostFailureOrSuccessOption});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object image = freezed,
    Object body = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object addPostFailureOrSuccessOption = freezed,
    Object likePostFailureOrSuccessOption = freezed,
    Object getPostFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as String,
      body: body == freezed ? _value.body : body as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      addPostFailureOrSuccessOption: addPostFailureOrSuccessOption == freezed
          ? _value.addPostFailureOrSuccessOption
          : addPostFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      likePostFailureOrSuccessOption: likePostFailureOrSuccessOption == freezed
          ? _value.likePostFailureOrSuccessOption
          : likePostFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      getPostFailureOrSuccessOption: getPostFailureOrSuccessOption == freezed
          ? _value.getPostFailureOrSuccessOption
          : getPostFailureOrSuccessOption
              as Option<Either<ServerFailure, DetailPost>>,
    ));
  }
}

/// @nodoc
abstract class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(
          _PostState value, $Res Function(_PostState) then) =
      __$PostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      String body,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ServerFailure, ApiResponse>> addPostFailureOrSuccessOption,
      Option<Either<ServerFailure, ApiResponse>> likePostFailureOrSuccessOption,
      Option<Either<ServerFailure, DetailPost>> getPostFailureOrSuccessOption});
}

/// @nodoc
class __$PostStateCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(_PostState _value, $Res Function(_PostState) _then)
      : super(_value, (v) => _then(v as _PostState));

  @override
  _PostState get _value => super._value as _PostState;

  @override
  $Res call({
    Object image = freezed,
    Object body = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object addPostFailureOrSuccessOption = freezed,
    Object likePostFailureOrSuccessOption = freezed,
    Object getPostFailureOrSuccessOption = freezed,
  }) {
    return _then(_PostState(
      image: image == freezed ? _value.image : image as String,
      body: body == freezed ? _value.body : body as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      addPostFailureOrSuccessOption: addPostFailureOrSuccessOption == freezed
          ? _value.addPostFailureOrSuccessOption
          : addPostFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      likePostFailureOrSuccessOption: likePostFailureOrSuccessOption == freezed
          ? _value.likePostFailureOrSuccessOption
          : likePostFailureOrSuccessOption
              as Option<Either<ServerFailure, ApiResponse>>,
      getPostFailureOrSuccessOption: getPostFailureOrSuccessOption == freezed
          ? _value.getPostFailureOrSuccessOption
          : getPostFailureOrSuccessOption
              as Option<Either<ServerFailure, DetailPost>>,
    ));
  }
}

/// @nodoc
class _$_PostState implements _PostState {
  const _$_PostState(
      {@required this.image,
      @required this.body,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.addPostFailureOrSuccessOption,
      @required this.likePostFailureOrSuccessOption,
      @required this.getPostFailureOrSuccessOption})
      : assert(image != null),
        assert(body != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(addPostFailureOrSuccessOption != null),
        assert(likePostFailureOrSuccessOption != null),
        assert(getPostFailureOrSuccessOption != null);

  @override
  final String image;
  @override
  final String body;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      addPostFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, ApiResponse>>
      likePostFailureOrSuccessOption;
  @override
  final Option<Either<ServerFailure, DetailPost>> getPostFailureOrSuccessOption;

  @override
  String toString() {
    return 'PostState(image: $image, body: $body, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, addPostFailureOrSuccessOption: $addPostFailureOrSuccessOption, likePostFailureOrSuccessOption: $likePostFailureOrSuccessOption, getPostFailureOrSuccessOption: $getPostFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostState &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.addPostFailureOrSuccessOption,
                    addPostFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.addPostFailureOrSuccessOption,
                    addPostFailureOrSuccessOption)) &&
            (identical(other.likePostFailureOrSuccessOption,
                    likePostFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.likePostFailureOrSuccessOption,
                    likePostFailureOrSuccessOption)) &&
            (identical(other.getPostFailureOrSuccessOption,
                    getPostFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getPostFailureOrSuccessOption,
                    getPostFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(addPostFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(likePostFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(getPostFailureOrSuccessOption);

  @override
  _$PostStateCopyWith<_PostState> get copyWith =>
      __$PostStateCopyWithImpl<_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {@required
          String image,
      @required
          String body,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              addPostFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, ApiResponse>>
              likePostFailureOrSuccessOption,
      @required
          Option<Either<ServerFailure, DetailPost>>
              getPostFailureOrSuccessOption}) = _$_PostState;

  @override
  String get image;
  @override
  String get body;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ServerFailure, ApiResponse>> get addPostFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, ApiResponse>> get likePostFailureOrSuccessOption;
  @override
  Option<Either<ServerFailure, DetailPost>> get getPostFailureOrSuccessOption;
  @override
  _$PostStateCopyWith<_PostState> get copyWith;
}
