import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/entities/detail_user.dart';
import '../../domain/entities/login_user.dart';
import '../../domain/login/i_login_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: ILoginFacade)
class LoginFacade implements ILoginFacade {
  @override
  Future<Either<ServerFailure, DetailUser>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');

    final loginUser = LoginUser(
      email: emailAddressStr,
      password: passwordStr,
    );

    try {
      final result = await getIt<HeyPApiService>().login(loginUser);
      if (result.body.success) {
        return right(result.body);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body.message));
      }
    } catch (e) {
      print(e);
      return left(const ServerFailure.serverError());
    }
  }
}
