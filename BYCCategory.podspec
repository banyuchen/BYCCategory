#
# Be sure to run `pod lib lint BYCCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BYCCategory'
  s.version          = '0.1.9'
  s.summary          = 'it is my pod Demo'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
it is my pod Demo
                       DESC

  s.homepage         = 'https://github.com/banyuchen/BYCCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'banyuchen' => '1204470409@qq.com' }
  s.source           = { :git => 'https://github.com/banyuchen/BYCCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BYCCategory/Classes/**/*'
  
  # 禁用 UIWebView
  s.subspec 'DISABLE_UIWEBVIEW' do |f|
    # 需要使用 WKWebView，支持最低版本为 iOS 8
    f.platform = :ios, "8.0"
    f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_UIWEBVIEW=1'}
  end
  
  # s.resource_bundles = {
  #   'BYCCategory' => ['BYCCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  
  s.dependency 'SensorsAnalyticsSDK', '->2.1.5', :subspecs => ['DISABLE_UIWEBVIEW']
end
