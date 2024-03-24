import 'package:flutter/services.dart';

import 'oo_is_tv_platform_interface.dart';

/// An implementation of [OoIsTvPlatform] that uses method channels.
class MethodChannelOoIsTv extends OoIsTvPlatform {
  /// The method channel used to interact with the native platform.

  final methodChannel = const MethodChannel('oo_is_tv');

  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('check');
    return version;
  }
}
