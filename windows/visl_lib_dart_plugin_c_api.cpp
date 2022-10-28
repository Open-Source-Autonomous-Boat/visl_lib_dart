#include "include/visl_lib_dart/visl_lib_dart_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "visl_lib_dart_plugin.h"

void VislLibDartPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  visl_lib_dart::VislLibDartPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
