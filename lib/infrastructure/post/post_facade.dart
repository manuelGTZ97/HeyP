import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/entities/detail_post.dart';
import '../../domain/post/i_post_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IPostFacade)
class PostFacade implements IPostFacade {
  @override
  Future<Either<ServerFailure, ApiResponse>> addPost(
      {String imagePath, String body, int categoryId}) async {
    String image;
    imagePath.isNotEmpty ? image = await _uploadImage(imagePath) : image = '';
    try {
      final result =
          await getIt<HeyPApiService>().addPost(image, body, categoryId);
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

  Future<String> _uploadImage(String filePath) async {
    http.MultipartFile file = await http.MultipartFile.fromPath(
      'image',
      filePath,
      contentType: MediaType('image', '*'),
    );

    try {
      final result = await getIt<HeyPApiService>().postImage(file);
      print(result.bodyString);
      if (result.body.success) return result.body.message;
    } catch (e) {
      print(e);
    }
    return '';
  }

  @override
  Future<Either<ServerFailure, ApiResponse>> likePost({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().likePost(id);
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
  Future<Either<ServerFailure, DetailPost>> getPost({int id}) async {
    try {
      final result = await getIt<HeyPApiService>().getPost(id);
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
