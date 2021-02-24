import 'package:adhara_socket_io/adhara_socket_io.dart';

class SocketIoManager {
  SocketIO _socketIO;
  SocketIOManager _manager;

  final String serverUrl;
  final Map<String, String> query;

  SocketIoManager(
    this.serverUrl,
    this.query,
  );

  Future<void> init() async {
    //print('enter init');
    _manager = SocketIOManager();
    _socketIO = await _manager.createInstance(SocketOptions(
      serverUrl,
      nameSpace: '/',
      query: query,
    ));

    _socketIO.connect();

    _socketIO.onConnect((data) {
      print('connected...');
    });

    // _socketIO.on('receive_message', (jsonData) {
    //   print('receive_message');
    //   print(jsonData['content']);
    // });
  }

  void subscribe(String event, Function(dynamic) listener) =>
      _socketIO.on(event, (jsonData) {
        listener(jsonData);
      });

  void sendMessage(String event, List<dynamic> arguments) =>
      _socketIO.emit(event, arguments);

  void disconnect() => _manager.clearInstance(_socketIO);
}
