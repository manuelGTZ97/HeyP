import 'dart:async';

import 'package:chopper/chopper.dart';

import 'pref_manager.dart';

class Interceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    Map<String, String> modifiedHeader = Map.from(request.headers);

    // modifiedHeader.putIfAbsent(
    //     'accept-language', () => Prefs.getString(Prefs.LANGUAGE, def: 'en'));
    modifiedHeader.putIfAbsent('Authorization',
        () => 'Bearer ' + Prefs.getString(Prefs.ACCESS_TOKEN, def: ''));

    Request modified = Request(
      request.method,
      request.url,
      request.baseUrl,
      body: request.body,
      headers: modifiedHeader,
      multipart: request.multipart,
      parameters: request.parameters,
      parts: request.parts,
    );
    return modified;
  }
}
