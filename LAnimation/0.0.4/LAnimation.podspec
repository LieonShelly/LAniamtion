
# Be sure to run `pod lib lint LAnimation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LAnimation'
  s.version          = '0.0.4'
  s.summary          = 'Some animation cools'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod hereDO: Add long description of the pod hereDO: Add long description of the pod hereDO: Add long description of the pod hereDO: Add long description of the pod hereDO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LieonShelly/LAnimation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lieon' => 'lieoncx@gmail.com' }
  s.source           = { :git => 'https://github.com/LieonShelly/LAnimation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = [
                    'LAnimation/Source/*.swift',
                    'LAnimation/Source/Animations/*.swift',
                    'LAnimation/Source/Extension/*.swift',
                    'LAnimation/Source/Model/*.swift',
                    'LAnimation/Source/Service/*.swift',
                    'LAnimation/Source/View/*.swift'
                  ]
  
  # s.resource_bundles = {
  #   'LAnimation' => ['LAnimation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version = '4.2'
end
