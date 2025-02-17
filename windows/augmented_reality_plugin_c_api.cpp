#include "include/augmented_reality/augmented_reality_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "augmented_reality_plugin.h"

void AugmentedRealityPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  augmented_reality::AugmentedRealityPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
