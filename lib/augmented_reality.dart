
import 'augmented_reality_platform_interface.dart';

class AugmentedReality {
  Future<String?> getPlatformVersion() {
    return AugmentedRealityPlatform.instance.getPlatformVersion();
  }
}
