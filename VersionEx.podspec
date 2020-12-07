#
# Be sure to run `pod lib lint VersionEx.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VersionEx'
  s.version          = '0.0.1'
  s.summary          = 'Application version extension.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ShenYj/VersionEx'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ShenYj' => 'shenyanjie123@foxmail.com' }
  s.source           = { :git => 'https://github.com/ShenYj/VersionEx.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'

  s.ios.deployment_target = '9.0'
  s.swift_versions = ['5.1', '5.2', '5.3']
  
  s.frameworks = 'Foundation'
  s.source_files = 'VersionEx/Classes/*.swift'
  
  # s.resource_bundles = {
  #   'VersionEx' => ['VersionEx/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
