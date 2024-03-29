#
# Be sure to run `pod lib lint LGWebImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LGWebImage'
  s.version          = '0.1.0'
  s.summary          = '基于SDWebImage的封装，支持切圆角'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
基于SDWebImage的封装，支持切圆角
支持自定义处理图片
走sd缓存流程
                       DESC

  s.homepage         = 'https://github.com/lizhixingios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lizhixing' => '740157759@qq.com' }
  s.source           = { :git => 'https://github.com/lizhixingios/LGWebImage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LGWebImage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LGWebImage' => ['LGWebImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SDWebImage'
end
