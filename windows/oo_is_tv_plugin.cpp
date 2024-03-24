#include "oo_is_tv_plugin.h"

// This must be included before many other Windows headers.
#include <windows.h>

// For getPlatformVersion; remove unless needed for your plugin implementation.
#include <VersionHelpers.h>

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <memory>
#include <sstream>

namespace oo_is_tv {

// static
void OoIsTvPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows *registrar) {
  auto channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "oo_is_tv",
          &flutter::StandardMethodCodec::GetInstance());

  auto plugin = std::make_unique<OoIsTvPlugin>();

  channel->SetMethodCallHandler(
      [plugin_pointer = plugin.get()](const auto &call, auto result) {
        plugin_pointer->HandleMethodCall(call, std::move(result));
      });

  registrar->AddPlugin(std::move(plugin));
}

OoIsTvPlugin::OoIsTvPlugin() {}

OoIsTvPlugin::~OoIsTvPlugin() {}

void OoIsTvPlugin::HandleMethodCall(
    const flutter::MethodCall<flutter::EncodableValue> &method_call,
        std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
      if (method_call.method_name().compare("check") == 0) {
        result->Success(flutter::EncodableValue(FALSE));
      } else {
        result->NotImplemented();
      }
}

}  // namespace oo_is_tv
