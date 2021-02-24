import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/changepassword/i_change_password_facade.dart';
import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/api_response.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IChangePasswordFacade _changePasswordFacade;

  ChangePasswordBloc(this._changePasswordFacade)
      : super(ChangePasswordState.initial());

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          changePasswordFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailStr),
        );
      },
      codeChanged: (e) async* {
        yield state.copyWith(
          code: StringNotEmpty(e.codeStr),
        );
      },
      tokenChanged: (e) async* {
        yield state.copyWith(
          token: StringNotEmpty(e.tokenStr),
        );
      },
      newPasswordChanged: (e) async* {
        yield state.copyWith(
          newPassword: Password(e.passwordStr),
          changePasswordFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: Password(e.passwordStr),
          changePasswordFailureOrSuccessOption: none(),
        );
      },
      changePassword: (e) async* {
        yield* _performActionFacade(
          _changePasswordFacade.changePassword,
        );
      },
      sendCode: (e) async* {
        yield* _performSendCodeActionFacade(
          _changePasswordFacade.sendCode,
        );
      },
      verifyCode: (e) async* {
        yield* _performVerifyCodeActionFacade(
          _changePasswordFacade.verifyCode,
        );
      },
      updatePassword: (e) async* {
        yield* _performUpdatePasswordActionFacade(
          _changePasswordFacade.updatePassword,
        );
      },
    );
  }

  Stream<ChangePasswordState> _performActionFacade(
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required Password password,
      @required Password newPassword,
      @required Password confirmPassword,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    final isPasswordValid = state.password.isValid();
    final isNewPasswordValid = state.newPassword.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();

    if (isPasswordValid && isNewPasswordValid && isConfirmPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        changePasswordFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        password: state.password,
        newPassword: state.newPassword,
        confirmPassword: state.confirmPassword,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      changePasswordFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
    //}
  }

  Stream<ChangePasswordState> _performSendCodeActionFacade(
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required EmailAddress email,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    final isEmailValid = state.email.isValid();

    if (isEmailValid) {
      yield state.copyWith(
        isSubmitting: true,
        sendCodeFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        email: state.email,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      sendCodeFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<ChangePasswordState> _performVerifyCodeActionFacade(
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required StringNotEmpty token,
      @required StringNotEmpty code,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    final isTokenValid = state.token.isValid();
    final isCodeValid = state.code.isValid();

    if (isTokenValid && isCodeValid) {
      yield state.copyWith(
        isSubmitting: true,
        verifyCodeFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        token: state.token,
        code: state.code,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      verifyCodeFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<ChangePasswordState> _performUpdatePasswordActionFacade(
    Future<Either<ServerFailure, ApiResponse>> Function({
      @required StringNotEmpty token,
      @required Password newPassword,
      @required Password confirmPassword,
    })
        forwardedCall,
  ) async* {
    Either<ServerFailure, ApiResponse> failureOrSuccess;

    final isTokenValid = state.token.isValid();
    final isNewPasswordValid = state.newPassword.isValid();
    final isConfirmNewPasswordValid = state.confirmPassword.isValid();

    if (isTokenValid && isNewPasswordValid && isConfirmNewPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        resetPasswordFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        token: state.token,
        newPassword: state.newPassword,
        confirmPassword: state.confirmPassword,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      resetPasswordFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
