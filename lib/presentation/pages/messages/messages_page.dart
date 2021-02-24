import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/messages/messages_bloc.dart';
import '../../../domain/entities/message.dart';
import '../../../injection.dart';
import '../../components/empty_list_widget.dart';
import '../../components/message_list_shimmer.dart';
import '../../components/no_internet.dart';
import '../../routes/routes.dart';
import '../../utils/app_utils.dart';
import 'widgets/message_list_item.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  MessagesBloc _messagesBloc;

  Future<bool> _refresh() {
    _messagesBloc.add(MessagesEvent.getMessages());
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'messages'.tr(),
        ),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refresh,
        child: BlocProvider(
          create: (context) => _messagesBloc = getIt<MessagesBloc>()
            ..add(MessagesEvent.getMessages()),
          child: BlocConsumer<MessagesBloc, MessagesState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.messagesFailureOrSuccessOption.fold(
                () => MessageListShimmer(),
                (either) => either.fold(
                  (failure) => NoInternet(
                    onPressed: _refresh,
                  ),
                  (success) => success.messages.isNotEmpty
                      ? _messagesWidget(success.messages)
                      : Center(
                          child: EmptyListWidget(
                            icon: 'icon_no_messages',
                            message: 'no_messages'.tr(),
                          ),
                        ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _messagesWidget(List<Message> messages) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MessageListItem(
          message: messages[index],
          onTap: () => Navigator.pushNamed(
            context,
            Routes.messagesDetails,
            arguments: messages[index].sender.id != AppUtils.getUserID()
                ? messages[index].sender
                : messages[index].receiver,
          ),
        );
      },
    );
  }
}
