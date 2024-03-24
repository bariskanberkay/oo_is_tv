import 'oo_is_tv_platform_interface.dart';

class OoIsTv {
  Future<bool?> check() {
    return OoIsTvPlatform.instance.check();
  }
}
