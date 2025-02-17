import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'augmented_reality_method_channel.dart';

abstract class AugmentedRealityPlatform extends PlatformInterface {
  /// Constructs a AugmentedRealityPlatform.
  AugmentedRealityPlatform() : super(token: _token);

  static final Object _token = Object();

  static AugmentedRealityPlatform _instance = MethodChannelAugmentedReality();

  /// The default instance of [AugmentedRealityPlatform] to use.
  ///
  /// Defaults to [MethodChannelAugmentedReality].
  static AugmentedRealityPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AugmentedRealityPlatform] when
  /// they register themselves.
  static set instance(AugmentedRealityPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
