#
# Be sure to run `pod lib lint StackO-Dependency-Demo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'StackO-Dependency-Demo'
  s.version          = '0.1.0'
  s.summary          = 'A demo of Dependency in a Podspec.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod demonstrates including dependencies to other Pods in a developed-pod.
                       DESC

  s.homepage         = 'https://github.com/ericwastaken/CocoaPod-Dependency-Demo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eric A. Soto' => 'easoto@iss-pr.com' }
  s.source           = { :git => 'https://github.com/ericwastaken/CocoaPod-Dependency-Demo.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ericwastaken'

  s.ios.deployment_target = '8.0'

  s.source_files = 'StackO-Dependency-Demo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'StackO-Dependency-Demo' => ['StackO-Dependency-Demo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'RxSwift', '~> 3.0.1'
end
