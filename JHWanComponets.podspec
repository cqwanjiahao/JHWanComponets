#
# Be sure to run `pod lib lint JHWanComponets.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  #库名称
  s.name             = 'JHWanComponets'
  #版本号
  s.version          = '0.1.0'
  #库简短介绍
  s.summary          = 'A short description of JHWanComponets.'
  #开源库描述
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  #开源库地址，或者是博客、社交地址等
  s.homepage         = 'https://github.com/jhwan/JHWanComponets'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  #开源库作者
  s.author           = { 'jhwan' => '490678868@qq.com' }
  #源库资源文件
  s.source           = { :git => 'https://github.com/jhwan/JHWanComponets.git', :tag => s.version.to_s }
  #社交网址
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  #开源库最低支持
  s.ios.deployment_target = '10.0'
  #源库资源文件
  s.source_files = 'JHWanComponets/Classes/**/*'
  #添加资源文件
  # s.resource_bundles = {
  #   'JHWanComponets' => ['JHWanComponets/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #依赖的系统库 多个用逗号隔开
  # s.frameworks = 'UIKit', 'MapKit'
  #引入第三方依赖库
  # s.dependency 'AFNetworking', '~> 2.3'
end
