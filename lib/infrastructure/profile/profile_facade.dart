import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_user.dart';
import '../../domain/profile/i_profile_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IProfileFacade)
class ProfileFacade implements IProfileFacade {
  @override
  Future<Either<ServerFailure, DetailUser>> getUserInfo({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().getUserInfo(id);
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

  @override
  Future<Either<ServerFailure, ApiResponse>> followUser({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().followUser(id);
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
