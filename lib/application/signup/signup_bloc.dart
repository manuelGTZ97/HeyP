import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_user.dart';
import '../../domain/entities/user.dart';
import '../../domain/signup/i_signup_facade.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final ISignUpFacade _signupFacade;

  SignUpBloc(this._signupFacade) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      imageChanged: (e) async* {
        yield state.copyWith(
          image: e.imageStr,
          actionFailureOrSuccessOption: none(),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: StringNotEmpty(e.usernameStr),
          actionFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: StringNotEmpty(e.firstNameStr),
          actionFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: StringNotEmpty(e.lastNameStr),
          actionFailureOrSuccessOption: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: e.phoneStr,
          actionFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          actionFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          actionFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: Password(e.passwordStr),
          actionFailureOrSuccessOption: none(),
        );
      },
      registerPressed: (e) async* {
        yield* _performActionFacade(
          _signupFacade.register,
        );
      },
      updateProfilePressed: (e) async* {
        yield* _performUpdateProfileActionFacade(
          _signupFacade.updateProfile,
        );
      },
    );
  }

  Stream<SignUpState> _performActionFacade(
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required User user,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    final isUsernameValid = state.username.isValid();
    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();

    if (isUsernameValid &&
        isFirstNameValid &&
        isLastNameValid &&
        isEmailValid &&
        isPasswordValid &&
        isConfirmPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        actionFailureOrSuccessOption: none(),
      );

      User user = User(
        username: state.username.value.getOrElse(() => 'INVALID USERNAME'),
        firstName: state.firstName.value.getOrElse(() => 'INVALID FIRST NAME'),
        lastName: state.lastName.value.getOrElse(() => 'INVALID FIRST NAME'),
        phone: state.phone,
        email: state.emailAddress.value.getOrElse(() => 'INVALID EMAIL'),
        password: state.password.value.getOrElse(() => 'INVALID PASSWORD'),
        confirmPassword:
            state.confirmPassword.value.getOrElse(() => 'INVALID PASSWORD'),
        avatar: state.image,
      );

      failureOrSuccess = await forwardedCall(
        user: user,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      actionFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignUpState> _performUpdateProfileActionFacade(
    Future<Either<ServerFailure, DetailUser>> Function({
      @required User user,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, DetailUser> failureOrSuccess;

    final isUsernameValid = state.username.isValid();
    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();

    if (isUsernameValid && isFirstNameValid && isLastNameValid) {
      yield state.copyWith(
        isSubmitting: true,
        updateUserFailureOrSuccessOption: none(),
      );

      User user = User(
        username: state.username.value.getOrElse(() => 'INVALID USERNAME'),
        firstName: state.firstName.value.getOrElse(() => 'INVALID FIRST NAME'),
        lastName: state.lastName.value.getOrElse(() => 'INVALID FIRST NAME'),
        phone: state.phone,
        avatar: state.image,
      );

      failureOrSuccess = await forwardedCall(
        user: user,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      updateUserFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
