import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_post.dart';
import '../../domain/post/i_post_facade.dart';

part 'post_bloc.freezed.dart';
part 'post_event.dart';
part 'post_state.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final IPostFacade _postFacade;
  PostBloc(this._postFacade) : super(PostState.initial());

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    yield* event.map(
      imageChanged: (e) async* {
        yield state.copyWith(
          image: e.imageStr,
          addPostFailureOrSuccessOption: none(),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          body: e.bodyStr,
          addPostFailureOrSuccessOption: none(),
        );
      },
      addPost: (e) async* {
        yield* _performAddPost(
          _postFacade.addPost,
        );
      },
      likePost: (e) async* {
        yield* _performLikePost(
          e.id,
          _postFacade.likePost,
        );
      },
      getPost: (e) async* {
        yield* _performGetPost(
          e.id,
          _postFacade.getPost,
        );
      },
    );
  }

  Stream<PostState> _performAddPost(
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required String imagePath,
      @required String body,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    yield state.copyWith(
      isSubmitting: true,
      addPostFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      imagePath: state.image,
      body: state.body,
    );

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      addPostFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<PostState> _performLikePost(
    int id,
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    yield state.copyWith(
      isSubmitting: true,
      likePostFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      likePostFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<PostState> _performGetPost(
    int id,
    Future<Either<ServerFailure, DetailPost>> Function({
      @required int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailPost> failureOrSuccess;

    yield state.copyWith(
      isSubmitting: true,
      getPostFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      getPostFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
