import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../application/messages/messages_bloc.dart';
import '../../../domain/entities/message.dart';
import '../../../domain/entities/user.dart';
import '../../../infrastructure/core/pref_manager.dart';
import '../../../infrastructure/data/socket_io_manager.dart';
import '../../../injection.dart';
import '../../routes/routes.dart';
import '../../utils/app_utils.dart';
import '../../utils/constants.dart';
import 'widgets/input_widget.dart';

class MessagesDetailsPage extends StatefulWidget {
  final User user;

  const MessagesDetailsPage({Key key, @required this.user}) : super(key: key);
  @override
  _MessagesDetailsPageState createState() => _MessagesDetailsPageState();
}

class _MessagesDetailsPageState extends State<MessagesDetailsPage> {
  ScrollController _scrollController = ScrollController();

  SocketIoManager _socketIoManager;
  List<Message> _messages = [];
  bool _connected = false;
  bool _isTyping = false;

  int _senderId = Prefs.getID();
  int _receiverId;

  String _channelId;
  String _receiverChannelId;

  MessagesBloc _bloc;

  int _offset = 0;
  bool _hasReachedEndOfResults = false;
  bool _loading = true;

  void _startTyping() {
    //print('start typing');
    _socketIoManager.sendMessage('start_typing', [_receiverChannelId]);
  }

  void _stopTyping() {
    //print('stop typing');
    _socketIoManager.sendMessage('stop_typing', [_receiverChannelId]);
  }

  void _sendMessage(String message) {
    _socketIoManager.sendMessage('send_message', [
      Message(
        senderId: _senderId,
        receiverId: _receiverId,
        message: message,
      ).toJson(),
    ]);
    _bloc.add(MessagesEvent.messageSent(message));
  }

  @override
  void initState() {
    super.initState();
    _receiverId = widget.user.id;

    _channelId = '$_senderId-$_receiverId';
    _receiverChannelId = '$_receiverId-$_senderId';

    _initBloc();
    _initSocket();
    _initScrollListener();
  }

  void _initBloc() {
    _bloc = getIt<MessagesBloc>()
      ..add(MessagesEvent.getMessagesDetails(_receiverId, _offset));
    _bloc.add(MessagesEvent.senderIdChanged(_senderId));
    _bloc.add(MessagesEvent.receiverIdChanged(_receiverId));
  }

  void _initSocket() {
    if (_connected) return;
    _socketIoManager = SocketIoManager(Routes.socketURL, {
      'channel': _channelId,
      'token': Prefs.getString(Prefs.ACCESS_TOKEN),
    })
      ..init().then((_) {
        _connected = !_connected;
        _socketIoManager.subscribe('receive_message', (jsonData) {
          _bloc.add(MessagesEvent.messageReceived(jsonData['message']));
          _scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 200),
            curve: Curves.bounceInOut,
          );
        });
        _socketIoManager.subscribe('start_typing', (jsonData) {
          _bloc.add(MessagesEvent.isTyping(true));
        });
        _socketIoManager.subscribe('stop_typing', (jsonData) {
          _bloc.add(MessagesEvent.isTyping(false));
        });
        _socketIoManager.subscribe('disconnect', (jsonData) {});
      });
  }

  void _initScrollListener() {
    _scrollController
      ..addListener(() {
        var triggerFetchMoreSize =
            0.9 * _scrollController.position.maxScrollExtent;

        if (!_loading &&
            !_hasReachedEndOfResults &&
            _scrollController.position.pixels > triggerFetchMoreSize) {
          _bloc.add(MessagesEvent.getMessagesDetails(_receiverId, _offset));
          _loading = true;
        }
      });
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _socketIoManager?.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            ClipOval(
              child: CachedNetworkImage(
                imageUrl:
                    AppUtils.getUserAvatar(widget.user.id, widget.user.avatar),
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) {
                  //print(error);
                  return Image.asset(
                    'assets/images/empty_avatar.png',
                    width: 40,
                    height: 40,
                  );
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.user.username,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.phone,
              color: kColorGrey.withOpacity(0.5),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => _bloc,
          child: BlocConsumer<MessagesBloc, MessagesState>(
            listener: (context, state) {
              if (_loading) {
                state.messagesFailureOrSuccessOption.fold(
                  () => null,
                  (either) => either.fold(
                    (failure) => null,
                    (success) {
                      print('adding');
                      if (success.messages.isEmpty)
                        _hasReachedEndOfResults = true;
                      else {
                        _offset++;
                        _messages.addAll(success.messages);
                      }

                      _loading = false;
                    },
                  ),
                );
              }

              if (state.receiveMessage.message != null) {
                _messages.insert(0, state.receiveMessage);
              }

              _isTyping = state.isTyping;
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: _chatListWidget(_messages),
                  ),
                  if (_isTyping)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Lottie.asset(
                              'assets/json/typing-indicator.json',
                              width: 42,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: kColorGrey.withOpacity(0.1),
                        ),
                      ),
                    ),
                    child: InputWidget(
                      onSendMessage: _sendMessage,
                      onStartTyping: _startTyping,
                      onStopTyping: _stopTyping,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _chatListWidget(List<Message> messages, {bool retry}) {
    return ListView.builder(
      controller: _scrollController,
      reverse: true,
      itemCount:
          _hasReachedEndOfResults ? messages.length : messages.length + 1,
      itemBuilder: (context, index) {
        if (retry == null) retry = false;
        if (!_hasReachedEndOfResults && index >= messages.length) {
          return Container(
            child: Center(
              child: retry
                  ? IconButton(
                      onPressed: () {
                        _bloc.add(MessagesEvent.getMessagesDetails(
                            _receiverId, _offset));
                      },
                      icon: Icon(
                        Icons.refresh,
                        size: 25,
                        color: kColorPrimary,
                      ),
                    )
                  : _loading
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('loading'.tr()),
                        )
                      : Container(),
            ),
          );
        }
        return _singleMessageWidget(messages[index]);
      },
    );
  }

  Widget _singleMessageWidget(Message message) {
    return Container(
      alignment: message.senderId == _senderId
          ? Alignment.centerRight
          : Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2.5),
      //margin: EdgeInsets.all(10),

      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: message.senderId == _senderId
              ? kColorPrimary.withOpacity(0.2)
              : kColorGrey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
