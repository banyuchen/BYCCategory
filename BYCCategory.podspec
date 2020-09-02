#
# Be sure to run `pod lib lint BYCCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BYCCategory'
  s.version          = '0.1.15'
  s.summary          = 'it is my pod Demo'

  s.homepage         = 'https://github.com/banyuchen/BYCCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'banyuchen' => '1204470409@qq.com' }
  s.source           = { :git => 'https://github.com/banyuchen/BYCCategory.git', :tag => s.version.to_s }
  
  s.platform = :ios, "8.0"
  s.default_subspec = 'core'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'QuartzCore', 'CoreLocation', 'CoreMotion'
  s.libraries = 'icucore', 'sqlite3', 'z'
  
  # 禁用 UIWebView
  s.subspec 'DISABLE_UIWEBVIEW' do |f|
    # 需要使用 WKWebView，支持最低版本为 iOS 8
    f.platform = :ios, "8.0"
    f.dependency 'BYCCategory'
    f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_UIWEBVIEW=1'}
  end
  
end
