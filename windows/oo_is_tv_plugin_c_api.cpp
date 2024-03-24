#include "include/oo_is_tv/oo_is_tv_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "oo_is_tv_plugin.h"

void OoIsTvPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  oo_is_tv::OoIsTvPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
