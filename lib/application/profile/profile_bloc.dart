import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_feeds.dart';
import '../../domain/entities/detail_user.dart';
import '../../domain/profile/i_profile_facade.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileFacade _profileFacade;
  ProfileBloc(
    this._profileFacade,
  ) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      getUserPosts: (e) async* {
        // yield* _performGetUsersPost(
        //   e.id,
        //   _profileFacade.getPost,
        // );
      },
      getUserinfo: (e) async* {
        yield* _performGetUserInfo(
          e.id,
          _profileFacade.getUserInfo,
        );
      },
      followUser: (e) async* {
        yield* _performFollowUser(
          e.id,
          _profileFacade.followUser,
        );
      },
    );
  }

  Stream<ProfileState> _performGetUserInfo(
    int id,
    Future<Either<ServerFailure, DetailUser>> Function({
      int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailUser> failureOrSuccess;
    yield state.copyWith(
      isSubmitting: true,
      getUserInfoFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      getUserInfoFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<ProfileState> _performFollowUser(
    int id,
    Future<Either<ServerFailure, ApiResponse>> Function({
      int id,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;
    yield state.copyWith(
      followUserFailureOrSuccessOption: none(),
    );

    failureOrSuccess = await forwardedCall(
      id: id,
    );

    yield state.copyWith(
      followUserFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
