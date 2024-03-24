#ifndef FLUTTER_PLUGIN_OO_IS_TV_PLUGIN_H_
#define FLUTTER_PLUGIN_OO_IS_TV_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace oo_is_tv {

class OoIsTvPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OoIsTvPlugin();

  virtual ~OoIsTvPlugin();

  // Disallow copy and assign.
  OoIsTvPlugin(const OoIsTvPlugin&) = delete;
  OoIsTvPlugin& operator=(const OoIsTvPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace oo_is_tv

#endif  // FLUTTER_PLUGIN_OO_IS_TV_PLUGIN_H_
