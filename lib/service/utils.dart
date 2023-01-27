import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/service/locator.dart';
import 'package:flutter_application_1/theme/palette.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:fluttertoast/fluttertoast.dart';

NavigationService navigator = getIt<NavigationService>();

Future<bool> isNetworkConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } on SocketException catch (_) {
    return false;
  }
}

dynamic showToast(
  String toastMsg, {
  Color? backgroundColor,
  bool longToast = false,
  ToastGravity? gravity,
}) {
  return Fluttertoast.showToast(
    msg: toastMsg,
    toastLength: longToast ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.BOTTOM,
    textColor: Colors.black,
    backgroundColor: Palette.appTheme.primaryColor,
    timeInSecForIosWeb: longToast ? 5 : 2,
  );
}
