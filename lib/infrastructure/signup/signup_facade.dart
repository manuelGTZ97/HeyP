import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_user.dart';
import '../../domain/entities/user.dart';
import '../../domain/signup/i_signup_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: ISignUpFacade)
class SignUpFacade implements ISignUpFacade {
  @override
  Future<Either<ServerFailure, ApiResponse>> register({
    User user,
  }) async {
    User u;
    if (user.avatar.isNotEmpty) {
      final image = await _uploadImage(user.avatar, false);
      u = user.copyWith(avatar: image);
    } else {
      u = user;
    }

    try {
      final result = await getIt<HeyPApiService>().register(u);
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
  Future<Either<ServerFailure, DetailUser>> updateProfile({User user}) async {
    User u;
    if (user.avatar.isNotEmpty) {
      final image = await _uploadImage(user.avatar, true);
      u = user.copyWith(avatar: image);
    } else {
      u = user;
    }

    try {
      final result = await getIt<HeyPApiService>().updateProfile(u);
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

  Future<String> _uploadImage(String filePath, bool update) async {
    http.MultipartFile file = await http.MultipartFile.fromPath(
      'avatar',
      filePath,
      contentType: MediaType('image', '*'),
    );

    try {
      final result = await (update
          ? getIt<HeyPApiService>().updateAvatar(file)
          : getIt<HeyPApiService>().uploadAvatar(file));

      if (result.body.success) return result.body.message;
    } catch (e) {
      print(e);
    }
    return '';
  }
}
