library flutter_qr_scanner;

import 'dart:async';

import 'package:flutter/services.dart';

class FlutterQrScanner {
  static const MethodChannel _channel =
      const MethodChannel('flutter_qr_scanner');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
