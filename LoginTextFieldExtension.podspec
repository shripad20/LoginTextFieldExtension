#
# Be sure to run `pod lib lint LoginTextFieldExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LoginTextFieldExtension'
  s.version          = '1.0.2'
  s.summary          = 'A bunch of useful methods of UITextField.'
  s.swift_version    = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'LoginTextFieldExtension has few method which helps you to add border to textfield and validation for login module by simply calling ready-made methods.'
                       DESC

  s.homepage         = 'https://github.com/shripad20/LoginTextFieldExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shripad20' => 'shripad.chidrawar20@gmail.com' }
  s.source           = { :git => 'https://github.com/shripad20/LoginTextFieldExtension.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LoginTextFieldExtension/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LoginTextFieldExtension' => ['LoginTextFieldExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
