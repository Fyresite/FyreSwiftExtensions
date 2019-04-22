#
# Be sure to run `pod lib lint FyreSwiftExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FyreSwiftExtensions'
  s.version          = '0.1.0'
  s.summary          = 'FyreSwiftExtensions are a few functions and extensions that will make Swift development an easier process'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A few functions and extensions that will make Swift development an easier process. FyreSwiftExtensions brings extensions for the classes UIView, Double, Float, CGFloat, String, UIColor, UIImage, and custom functions for gradients, Dictionary Keypaths and NibViews'

  s.homepage         = 'https://github.com/Fyresite/FyreSwiftExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tdellytech@gmail.com' => 'tdellytech@gmail.com' }
  s.source           = { :git => 'https://github.com/Fyresite/FyreSwiftExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.source_files = 'FyreSwiftExtensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FyreSwiftExtensions' => ['FyreSwiftExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'NVActivityIndicatorView'
end
