import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/socket/socket_bloc.dart';
import 'infrastructure/core/pref_manager.dart';
import 'infrastructure/data/socket_io_manager.dart';
import 'injection.dart';
import 'presentation/routes/routes.dart';

class SocketProvider extends StatefulWidget {
  final Widget child;

  const SocketProvider({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  _SocketProviderState createState() => _SocketProviderState();
}

class _SocketProviderState extends State<SocketProvider> {
  SocketIoManager _socketIoManager;
  bool _connected = false;

  String _channelId = '${Prefs.getName()}-${Prefs.getID()}';

  void _initSocket() {
    if (_connected) return;
    _socketIoManager = SocketIoManager(Routes.socketURL, {
      'channel': _channelId,
      'token': Prefs.getString(Prefs.ACCESS_TOKEN),
    })
      ..init().then((_) {
        _connected = !_connected;
        _socketIoManager.subscribe('disconnect', (jsonData) {});
      });
  }

  @override
  void initState() {
    super.initState();
    _initSocket();
  }

  @override
  void dispose() {
    _socketIoManager?.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SocketBloc>(),
      child: BlocConsumer<SocketBloc, SocketState>(
        listener: (context, state) {},
        builder: (context, state) {
          return widget.child;
        },
      ),
    );
  }
}
