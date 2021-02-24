// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/changepassword/change_password_bloc.dart';
import 'infrastructure/changepassword/change_password_facade.dart';
import 'application/comment/comment_bloc.dart';
import 'infrastructure/comment/comment_facade.dart';
import 'application/feed/feed_bloc.dart';
import 'infrastructure/feed/feed_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/changepassword/i_change_password_facade.dart';
import 'domain/comment/i_comment_facade.dart';
import 'domain/feed/i_feed_facade.dart';
import 'domain/login/i_login_facade.dart';
import 'domain/messages/i_messages_facade.dart';
import 'domain/news/i_news_facade.dart';
import 'domain/notification/i_notification_facade.dart';
import 'domain/post/i_post_facade.dart';
import 'domain/profile/i_profile_facade.dart';
import 'domain/search/i_search_facade.dart';
import 'domain/signup/i_signup_facade.dart';
import 'application/login/login_bloc.dart';
import 'infrastructure/login/login_facade.dart';
import 'application/messages/messages_bloc.dart';
import 'infrastructure/messages/messages_facade.dart';
import 'navigation_service.dart';
import 'application/news/news_bloc.dart';
import 'infrastructure/news/news_facade.dart';
import 'application/notification/notification_bloc.dart';
import 'infrastructure/notification/notification_facade.dart';
import 'application/post/post_bloc.dart';
import 'infrastructure/post/post_facade.dart';
import 'application/profile/profile_bloc.dart';
import 'infrastructure/profile/profile_facade.dart';
import 'infrastructure/services/push_notification_service.dart';
import 'application/search/search_bloc.dart';
import 'infrastructure/search/search_facade.dart';
import 'application/signup/signup_bloc.dart';
import 'infrastructure/signup/signup_facade.dart';
import 'application/socket/socket_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseMessaging>(() => firebaseInjectableModule.fcm);
  gh.lazySingleton<IChangePasswordFacade>(() => ChangePasswordFacade());
  gh.lazySingleton<ICommentFacade>(() => CommentFacade());
  gh.lazySingleton<IFeedFacade>(() => FeedFacade());
  gh.lazySingleton<ILoginFacade>(() => LoginFacade());
  gh.lazySingleton<IMessagesFacade>(() => MessagesFacade());
  gh.lazySingleton<INewsFacade>(() => NewsFacade());
  gh.lazySingleton<INotificationFacade>(() => NotificationFacade());
  gh.lazySingleton<IPostFacade>(() => PostFacade());
  gh.lazySingleton<IProfileFacade>(() => ProfileFacade());
  gh.lazySingleton<ISearchFacade>(() => SearchFacade());
  gh.lazySingleton<ISignUpFacade>(() => SignUpFacade());
  gh.factory<LoginBloc>(() => LoginBloc(get<ILoginFacade>()));
  gh.factory<MessagesBloc>(() => MessagesBloc(get<IMessagesFacade>()));
  gh.lazySingleton<NavigationService>(() => NavigationService());
  gh.factory<NewsBloc>(() => NewsBloc(get<INewsFacade>()));
  gh.factory<NotificationBloc>(
      () => NotificationBloc(get<INotificationFacade>()));
  gh.factory<PostBloc>(() => PostBloc(get<IPostFacade>()));
  gh.factory<ProfileBloc>(() => ProfileBloc(get<IProfileFacade>()));
  gh.factory<PushNotificationService>(() => PushNotificationService());
  gh.factory<SearchBloc>(() => SearchBloc(get<ISearchFacade>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(get<ISignUpFacade>()));
  gh.factory<SocketBloc>(() => SocketBloc());
  gh.factory<ChangePasswordBloc>(
      () => ChangePasswordBloc(get<IChangePasswordFacade>()));
  gh.factory<CommentBloc>(() => CommentBloc(get<ICommentFacade>()));
  gh.factory<FeedBloc>(() => FeedBloc(get<IFeedFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
