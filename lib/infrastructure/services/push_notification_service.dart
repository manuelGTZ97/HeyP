import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@injectable
class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging();

  Future<String> initialise() {
    if (Platform.isIOS) {
      _fcm.requestNotificationPermissions(IosNotificationSettings());
    }

    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );

    // For testing purposes print the Firebase Messaging token
    return _fcm.getToken();
    // print(token);
    // //await Prefs.load();
    // print('registered token ' + Prefs.getString(Prefs.GCM_TOKEN, def: ''));
    // if (token != Prefs.getString(Prefs.GCM_TOKEN, def: '')) {
    //   final result = await getIt<PetApiService>().updateGcmToken(token);
    //   if (result.body.success) Prefs.setString(Prefs.GCM_TOKEN, token);
    // }
  }
}
