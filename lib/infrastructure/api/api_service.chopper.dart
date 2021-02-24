// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$HeyPApiService extends HeyPApiService {
  _$HeyPApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HeyPApiService;

  @override
  Future<Response<DetailUser>> login(LoginUser user) {
    final $url = 'http://3.137.139.19/api/login/';
    final $body = user;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<DetailUser, DetailUser>($request);
  }

  @override
  Future<Response<ApiResponse>> register(User user) {
    final $url = 'http://3.137.139.19/api/signup/';
    final $body = user;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> changePassword(
      String password, String newPassword, String confirmPassword) {
    final $url = 'http://3.137.139.19/api/change_password/';
    final $body = <String, dynamic>{
      'old_password': password,
      'password': newPassword,
      'confirm_password': confirmPassword
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> sendCode(String email) {
    final $url = 'http://3.137.139.19/api/reset_password_step_1/';
    final $body = <String, dynamic>{'email': email};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> verifyCode(String token, String code) {
    final $url = 'http://3.137.139.19/api/reset_password_step_2/';
    final $body = <String, dynamic>{'token': token, 'code': code};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> updatePassword(
      String token, String password, String confirmPassword) {
    final $url = 'http://3.137.139.19/api/reset_password/';
    final $body = <String, dynamic>{
      'token': token,
      'password': password,
      'confirm_password': confirmPassword
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> updateAvatar(MultipartFile image) {
    final $url = 'http://3.137.139.19/api/change_avatar/';
    final $parts = <PartValue>[PartValueFile<MultipartFile>('image', image)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> uploadAvatar(MultipartFile image) {
    final $url = 'http://3.137.139.19/api/upload_avatar/';
    final $parts = <PartValue>[PartValueFile<MultipartFile>('image', image)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<DetailUser>> updateProfile(User user) {
    final $url = 'http://3.137.139.19/api/update_profile/';
    final $body = user;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<DetailUser, DetailUser>($request);
  }

  @override
  Future<Response<DetailFeeds>> getFeeds(int offset) {
    final $url = 'http://3.137.139.19/api/all_feeds/$offset/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailFeeds, DetailFeeds>($request);
  }

  @override
  Future<Response<DetailFeeds>> getUserFeeds(int offset) {
    final $url = 'http://3.137.139.19/api/feeds/$offset/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailFeeds, DetailFeeds>($request);
  }

  @override
  Future<Response<DetailFeeds>> getPosts(int id) {
    final $url = 'http://3.137.139.19/api/posts/$id/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailFeeds, DetailFeeds>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<ApiResponse>> postImage(MultipartFile image) {
    final $url = 'http://3.137.139.19/api/post_image/';
    final $parts = <PartValue>[PartValueFile<MultipartFile>('image', image)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> addPost(
      String image, String body, int categoryId) {
    final $url = 'http://3.137.139.19/api/post/';
    final $body = <String, dynamic>{
      'image': image,
      'body': body,
      'category_id': categoryId
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> likePost(int id) {
    final $url = 'http://3.137.139.19/api/like/';
    final $body = <String, dynamic>{'id': id};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<DetailNews>> getNews() {
    final $url = 'http://3.137.139.19/api/news/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailNews, DetailNews>($request);
  }

  @override
  Future<Response<DetailComments>> getComments(int id) {
    final $url = 'http://3.137.139.19/api/post/$id/comments/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailComments, DetailComments>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<DetailPost>> getPost(int id) {
    final $url = 'http://3.137.139.19/api/post/$id/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailPost, DetailPost>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<ApiResponse>> addComment(int id, String body) {
    final $url = 'http://3.137.139.19/api/comment/';
    final $body = <String, dynamic>{'id': id, 'comment': body};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> deleteComment(int id) {
    final $url = 'http://3.137.139.19/api/comment/$id/';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ApiResponse, ApiResponse>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<DetailNotifications>> getNotifications() {
    final $url = 'http://3.137.139.19/api/notifications/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailNotifications, DetailNotifications>($request);
  }

  @override
  Future<Response<ApiResponse>> readNotification(int id) {
    final $url = 'http://3.137.139.19/api/read_notification/';
    final $body = <String, dynamic>{'id': id};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<ApiResponse>> updateGcmToken(String token) {
    final $url = 'http://3.137.139.19/api/update_gcm_token/';
    final $body = <String, dynamic>{'token': token};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<DetailUser>> getUserInfo(int id) {
    final $url = 'http://3.137.139.19/api/user/$id/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailUser, DetailUser>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<ApiResponse>> followUser(int id) {
    final $url = 'http://3.137.139.19/api/follow/';
    final $body = <String, dynamic>{'id': id};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiResponse, ApiResponse>($request);
  }

  @override
  Future<Response<DetailMessages>> getMessages() {
    final $url = 'http://3.137.139.19/api/messages/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailMessages, DetailMessages>($request);
  }

  @override
  Future<Response<DetailMessages>> getMessagesDetails(int id, int offset) {
    final $url = 'http://3.137.139.19/api/messages/$id/$offset';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DetailMessages, DetailMessages>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<DetailFeeds>> search(String query) {
    final $url = 'http://3.137.139.19/api/search/';
    final $params = <String, dynamic>{'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<DetailFeeds, DetailFeeds>($request);
  }

  @override
  Future<Response<DetailFeeds>> searchPosts(String query) {
    final $url = 'http://3.137.139.19/api/search_posts/';
    final $params = <String, dynamic>{'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<DetailFeeds, DetailFeeds>($request);
  }
}
