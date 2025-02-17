#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint augmented_reality.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'augmented_reality'
  s.version          = '0.0.1'
  s.summary          = 'Flutter Augmented Reality Plugin'
  s.description      = <<-DESC
Flutter Augmented Reality Plugin
                       DESC
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Ja\'afar Naddaf' => 'jaafarnaddaf@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'GLTFSceneKit'
  s.dependency 'SwiftJWT'
  s.dependency 'ARCore/CloudAnchors', '~> 1.47.0'
  s.static_framework = true
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'augmented_reality_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
