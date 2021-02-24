import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/changepassword/i_change_password_facade.dart';
import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/api_response.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IChangePasswordFacade)
class ChangePasswordFacade implements IChangePasswordFacade {
  @override
  Future<Either<ServerFailure, ApiResponse>> changePassword(
      {Password password,
      Password newPassword,
      Password confirmPassword}) async {
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    final newpasswordStr =
        newPassword.value.getOrElse(() => 'INVALID PASSWORD');
    final confirmPasswordStr =
        confirmPassword.value.getOrElse(() => 'INVALID PASSWORD');

    try {
      final result = await getIt<HeyPApiService>()
          .changePassword(passwordStr, newpasswordStr, confirmPasswordStr);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, ApiResponse>> sendCode(
      {EmailAddress email}) async {
    final emailStr = email.value.getOrElse(() => 'INVALID EMAIL');
    try {
      final result = await getIt<HeyPApiService>().sendCode(emailStr);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, ApiResponse>> updatePassword(
      {StringNotEmpty token,
      Password newPassword,
      Password confirmPassword}) async {
    final tokenStr = token.value.getOrElse(() => 'INVALID TOKEN');
    final newPasswordStr =
        newPassword.value.getOrElse(() => 'INVALID PASSWORD');
    final confirmPasswordStr =
        confirmPassword.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      final result = await getIt<HeyPApiService>()
          .updatePassword(tokenStr, newPasswordStr, confirmPasswordStr);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, ApiResponse>> verifyCode(
      {StringNotEmpty token, StringNotEmpty code}) async {
    final tokenStr = token.value.getOrElse(() => 'INVALID TOKEN');
    final codeStr = code.value.getOrElse(() => 'INVALID CODE');
    try {
      final result =
          await getIt<HeyPApiService>().verifyCode(tokenStr, codeStr);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }
}
