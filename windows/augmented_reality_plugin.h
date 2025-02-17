#ifndef FLUTTER_PLUGIN_AUGMENTED_REALITY_PLUGIN_H_
#define FLUTTER_PLUGIN_AUGMENTED_REALITY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace augmented_reality {

class AugmentedRealityPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AugmentedRealityPlugin();

  virtual ~AugmentedRealityPlugin();

  // Disallow copy and assign.
  AugmentedRealityPlugin(const AugmentedRealityPlugin&) = delete;
  AugmentedRealityPlugin& operator=(const AugmentedRealityPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace augmented_reality

#endif  // FLUTTER_PLUGIN_AUGMENTED_REALITY_PLUGIN_H_
