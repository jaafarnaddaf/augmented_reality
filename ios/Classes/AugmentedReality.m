#import "AugmentedReality.h"
#if __has_include(<augmented_reality/augmented_reality-Swift.h>)
#import <augmented_reality/augmented_reality-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "augmented_reality-Swift.h"
#endif

@implementation AugmentedReality
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAugmentedReality registerWithRegistrar:registrar];
}
@end
