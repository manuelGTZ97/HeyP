import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/notification/notification_bloc.dart';
import '../../../domain/entities/notification.dart' as notif;
import '../../../injection.dart';
import '../../components/empty_list_widget.dart';
import '../../components/no_internet.dart';
import '../../components/notification_list_item.dart';
import '../../components/notification_list_shimmer.dart';
import '../../routes/routes.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage>
    with AutomaticKeepAliveClientMixin<NotificationsPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  NotificationBloc _notificationBloc;

  Future<bool> _refresh() {
    _notificationBloc.add(NotificationEvent.getNotifications());
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: _refresh,
      child: BlocProvider(
        create: (context) => _notificationBloc = getIt<NotificationBloc>()
          ..add(
            NotificationEvent.getNotifications(),
          ),
        child: BlocConsumer<NotificationBloc, NotificationState>(
          listener: (context, state) {},
          buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
          builder: (context, state) {
            return state.getNotificationsFailureOrSuccessOption.fold(
              () => NotificationListShimmer(),
              (either) => either.fold(
                (failure) => NoInternet(
                  msg: failure.map(
                    serverError: (_) => null,
                    apiFailure: (e) => e.msg,
                  ),
                  onPressed: _refresh,
                ),
                (success) => success.notifications.isNotEmpty
                    ? _bodyWidget(context, success.notifications)
                    : Center(
                        child: EmptyListWidget(
                          icon: 'icon_no_notifications',
                          message: 'no_notifications'.tr(),
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }

  ListView _bodyWidget(
      BuildContext context, List<notif.Notification> notifications) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        indent: 0,
        endIndent: 0,
      ),
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return NotificationListItem(
          notification: notifications[index],
          onTap: () {
            if (notifications[index].type == 2) {
              Navigator.of(context).pushNamed(Routes.profile,
                  arguments: notifications[index].sender);
            } else {
              Navigator.of(context).pushNamed(Routes.post,
                  arguments: notifications[index].postId);
            }
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
