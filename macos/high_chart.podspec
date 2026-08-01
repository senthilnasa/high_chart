#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint high_chart.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'high_chart'
  s.version          = '0.0.1'
  s.summary          = 'A chart library based on High Charts (.JS), able to build advanced   charts like Pie chart, linear chart, etc'
  s.description      = <<-DESC
A chart library based on High Charts (.JS), able to build advanced   charts like Pie chart, linear chart, etc
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files = 'high_chart/Sources/high_chart/**/*'

  # If your plugin requires a privacy manifest, for example if it collects user
  # data, update the PrivacyInfo.xcprivacy file to describe your plugin's
  # privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'high_chart_privacy' => ['high_chart/Sources/high_chart/PrivacyInfo.xcprivacy']}

  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
