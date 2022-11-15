Pod::Spec.new do |s|
  s.name             = 'Motor'
  s.version          = '1.0.1'
  s.summary          = 'The Sonr Motor.xcframework for iOS and macOS.'
  s.author           = { 'Prad Nukala' => 'prad@sonr.io' }
  s.source       = { :http => 'https://github.com/sonr-io/sonr/releases/latest/download/motor_universal.zip' }

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = "A legacy implementation for the Sonr Motor.xcframework"
  s.homepage         = 'https://docs.sonr.io'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }

  s.macos.deployment_target = '12.0'
  s.ios.deployment_target = '13.0'
  s.swift_version = "5.0"
  s.public_header_files = "Motor.xcframework/**/Headers/*.h"
  s.source_files = "Motor.xcframework/**/*.{h,m,swift}"
  s.vendored_frameworks = "Motor.xcframework"

  s.preserve_paths = "Motor.xcframework/*"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework Motor', 'ENABLE_BITCODE' => 'NO', }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
