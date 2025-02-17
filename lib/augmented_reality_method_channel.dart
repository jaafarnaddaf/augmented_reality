import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'augmented_reality_platform_interface.dart';

/// An implementation of [AugmentedRealityPlatform] that uses method channels.
class MethodChannelAugmentedReality extends AugmentedRealityPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('augmented_reality');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
