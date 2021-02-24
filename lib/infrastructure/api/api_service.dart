import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:http/http.dart' show MultipartFile;

import '../../domain/entities/api_response.dart';
import '../../domain/entities/comment.dart';
import '../../domain/entities/detail_comments.dart';
import '../../domain/entities/detail_feeds.dart';
import '../../domain/entities/detail_messages.dart';
import '../../domain/entities/detail_news.dart';
import '../../domain/entities/detail_notifications.dart';
import '../../domain/entities/detail_post.dart';
import '../../domain/entities/detail_user.dart';
import '../../domain/entities/feed.dart';
import '../../domain/entities/login_user.dart';
import '../../domain/entities/message.dart';
import '../../domain/entities/news.dart';
import '../../domain/entities/notification.dart';
import '../../domain/entities/user.dart';
import '../core/converter.dart';
import '../core/interceptor.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: 'http://yourdomain.com/api/')
abstract class HeyPApiService extends ChopperService {
  /// import 'package:http/http.dart' show MultipartFile;

  // @Get()
  // Future<Response> getPosts();

  @Post(path: 'login/')
  Future<Response<DetailUser>> login(
    @body LoginUser user,
  );

  @Post(path: 'signup/')
  Future<Response<ApiResponse>> register(
    @body User user,
  );

  @Post(path: 'change_password/')
  Future<Response<ApiResponse>> changePassword(
    @Field('old_password') String password,
    @Field('password') String newPassword,
    @Field('confirm_password') String confirmPassword,
  );

  @Post(path: 'reset_password_step_1/')
  Future<Response<ApiResponse>> sendCode(
    @Field('email') String email,
  );

  @Post(path: 'reset_password_step_2/')
  Future<Response<ApiResponse>> verifyCode(
    @Field('token') String token,
    @Field('code') String code,
  );

  @Post(path: 'reset_password/')
  Future<Response<ApiResponse>> updatePassword(
    @Field('token') String token,
    @Field('password') String password,
    @Field('confirm_password') String confirmPassword,
  );

  @Post(path: 'change_avatar/')
  @multipart
  Future<Response<ApiResponse>> updateAvatar(
    @PartFile() MultipartFile image,
  );

  @Post(path: 'upload_avatar/')
  @multipart
  Future<Response<ApiResponse>> uploadAvatar(
    @PartFile() MultipartFile image,
  );

  @Post(path: 'update_profile/')
  Future<Response<DetailUser>> updateProfile(
    @body User user,
  );

  @Get(path: 'all_feeds/{offset}/')
  Future<Response<DetailFeeds>> getFeeds(
    @Path() int offset,
  );

  @Get(path: 'feeds/{offset}/')
  Future<Response<DetailFeeds>> getUserFeeds(
    @Path() int offset,
  );

  @Get(path: 'posts/{id}/')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<DetailFeeds>> getPosts(
    @Path() int id,
  );

  @Post(path: 'post_image/')
  @multipart
  Future<Response<ApiResponse>> postImage(
    @PartFile() MultipartFile image,
  );

  @Post(path: 'post/')
  Future<Response<ApiResponse>> addPost(
    @Field('image') String image,
    @Field('body') String body,
    @Field('category_id') int categoryId,
  );

  @Post(path: 'like/')
  Future<Response<ApiResponse>> likePost(
    @Field('id') int id,
  );

  @Get(path: 'news/')
  Future<Response<DetailNews>> getNews();

  @Get(path: 'post/{id}/comments/')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<DetailComments>> getComments(
    @Path() int id,
  );

  @Get(path: 'post/{id}/')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<DetailPost>> getPost(
    @Path() int id,
  );

  @Post(path: 'comment/')
  Future<Response<ApiResponse>> addComment(
    @Field('id') int id,
    @Field('comment') String body,
  );

  @Delete(path: 'comment/{id}/')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<ApiResponse>> deleteComment(
    @Path() int id,
  );

  @Get(path: 'notifications/')
  Future<Response<DetailNotifications>> getNotifications();

  @Post(path: 'read_notification/')
  Future<Response<ApiResponse>> readNotification(
    @Field('id') int id,
  );

  @Post(path: 'update_gcm_token/')
  Future<Response<ApiResponse>> updateGcmToken(
    @Field('token') String token,
  );

  @Get(path: 'user/{id}/')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<DetailUser>> getUserInfo(
    @Path() int id,
  );

  @Post(path: 'follow/')
  Future<Response<ApiResponse>> followUser(
    @Field('id') int id,
  );

  @Get(path: 'messages/')
  Future<Response<DetailMessages>> getMessages();

  @Get(path: 'messages/{id}/{offset}')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<DetailMessages>> getMessagesDetails(
    @Path() int id,
    @Path() int offset,
  );

  @Get(path: 'search/')
  Future<Response<DetailFeeds>> search(
    @Query('query') String query,
  );

  @Get(path: 'search_posts/')
  Future<Response<DetailFeeds>> searchPosts(
    @Query('query') String query,
  );

  static HeyPApiService create() {
    final client = ChopperClient(
      baseUrl: 'http://yourdomain.com/api/',
      services: [
        _$HeyPApiService(),
      ],
      //converter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      converter: JsonSerializableConverter({
        ApiResponse: ApiResponse.fromJsonFactory,
        LoginUser: LoginUser.fromJsonFactory,
        DetailUser: DetailUser.fromJsonFactory,
        User: User.fromJsonFactory,
        DetailFeeds: DetailFeeds.fromJsonFactory,
        Feed: Feed.fromJsonFactory,
        DetailNews: DetailNews.fromJsonFactory,
        News: News.fromJsonFactory,
        DetailComments: DetailComments.fromJsonFactory,
        Comment: Comment.fromJsonFactory,
        DetailNotifications: DetailNotifications.fromJsonFactory,
        Notification: Notification.fromJsonFactory,
        DetailPost: DetailPost.fromJsonFactory,
        DetailMessages: DetailMessages.fromJsonFactory,
        Message: Message.fromJsonFactory,
      }),
      //errorConverter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        Interceptor(),
        (Response response) async {
          if (response.statusCode == 404) {
            chopperLogger.severe('404 NOT FOUND');
          }
          return response;
        },
      ],
    );
    return _$HeyPApiService(client);
  }
}
