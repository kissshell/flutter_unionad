#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_unionad.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_unionad'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/gstory0404/flutter_unionad'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'gstory' => 'https://github.com/gstory0404' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.static_framework = true
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'
  s.dependency 'Ads-CN','~> 4.3.0.3'
 # s.dependency 'Ads-CN-Beta','~> 4.3.0.2'
# .framework文件
#  s.vendored_frameworks = 'PangleSDK/BUAdSDK.framework','PangleSDK/BUCNAuxiliary.framework','PangleSDK/BUFoundation.framework'
# .a文件
 # s.vendored_libraries =''
# .bundle文件
#  s.resource='PangleSDK/BUAdSDK.bundle'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
