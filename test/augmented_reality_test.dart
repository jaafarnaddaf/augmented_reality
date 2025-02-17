import 'package:flutter_test/flutter_test.dart';
import 'package:augmented_reality/augmented_reality.dart';
import 'package:augmented_reality/augmented_reality_platform_interface.dart';
import 'package:augmented_reality/augmented_reality_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAugmentedRealityPlatform
    with MockPlatformInterfaceMixin
    implements AugmentedRealityPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AugmentedRealityPlatform initialPlatform = AugmentedRealityPlatform.instance;

  test('$MethodChannelAugmentedReality is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAugmentedReality>());
  });

  test('getPlatformVersion', () async {
    AugmentedReality augmentedRealityPlugin = AugmentedReality();
    MockAugmentedRealityPlatform fakePlatform = MockAugmentedRealityPlatform();
    AugmentedRealityPlatform.instance = fakePlatform;

    expect(await augmentedRealityPlugin.getPlatformVersion(), '42');
  });
}
