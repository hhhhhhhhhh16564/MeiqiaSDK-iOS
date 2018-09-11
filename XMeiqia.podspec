# coding: utf-8
#
# Be sure to run `pod lib lint MeiqiaSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "XMeiqia"
  s.version          = "3.4.8"
  s.summary          = "XMeiqia"
  s.description      = "XMeiqia"

  s.homepage         = "https://github.com/hhhhhhhhhh16564/MeiqiaSDK-iOS"
  s.license          = 'MIT'
  s.author           = { "ijinmao" => "340052204@qq.com" }
  s.source           = { :git => "git@github.com:hhhhhhhhhh16564/MeiqiaSDK-iOS.git", :tag => s.version }
  s.social_media_url = "https://meiqia.com"
  s.documentation_url = "https://github.com/Meiqia/MeiqiaSDK-iOS/wiki"
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'XMeiqiaSDK' do |ss|
    ss.frameworks =  'AVFoundation', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'
    ss.vendored_frameworks = 'Meiqia-SDK-files/MeiQiaSDK.framework'
    ss.libraries  =  'sqlite3', 'icucore', 'stdc++'
    ss.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => "${PODS_ROOT}/Meiqia/Meiqia-SDK-files"}
    ss.source_files = 'Meiqia-SDK-files/**/*'
  end


end