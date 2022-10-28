//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <visl_lib_dart/visl_lib_dart_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) visl_lib_dart_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "VislLibDartPlugin");
  visl_lib_dart_plugin_register_with_registrar(visl_lib_dart_registrar);
}
