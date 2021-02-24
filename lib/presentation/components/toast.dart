import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(String msg) async {
  // try {
  //   await Fluttertoast.cancel();
  // } catch (e) {}
  Fluttertoast.showToast(
    msg: msg,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
