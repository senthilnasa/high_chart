#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint high_chart.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'high_chart'
  s.version          = '0.0.1'
  s.summary          = 'A chart library based on High Charts (.JS), able to build advanced   charts like Pie chart, linear chart, etc.'
  s.description      = <<-DESC
A chart library based on High Charts (.JS), able to build advanced   charts like Pie chart, linear chart, etc.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
