#
# Be sure to run `pod lib lint sm.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ADISuperMemo2'
  s.version          = '0.1.0'
  s.summary          = 'Basic implementation of the SuperMemo2 algorithm'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Form more information on the Super Memo 2 algoritm visit https://www.supermemo.com/english/ol/sm2.htm.
Implementation tries to mimic the AnkiDroid app.
                       DESC

  s.homepage         = 'https://github.com/adi2004/super-memo2-pod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adrian Florescu' => 'florescu.adrian@gmail.com' }
  s.source           = { :git => 'https://github.com/adi2004/super-memo2-pod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/**/*'

  # s.resource_bundles = {
  #   'sm' => ['Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
