import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'oo_is_tv_method_channel.dart';

abstract class OoIsTvPlatform extends PlatformInterface {
  /// Constructs a OoIsTvPlatform.
  OoIsTvPlatform() : super(token: _token);

  static final Object _token = Object();

  static OoIsTvPlatform _instance = MethodChannelOoIsTv();

  /// The default instance of [OoIsTvPlatform] to use.
  ///
  /// Defaults to [MethodChannelOoIsTv].
  static OoIsTvPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OoIsTvPlatform] when
  /// they register themselves.
  static set instance(OoIsTvPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> check() async {
    throw UnimplementedError('check() has not been implemented.');
  }
}
