#
# Be sure to run `pod lib lint SwiftyHTML.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyHTML'
  s.version          = '0.1.4'
  s.summary          = 'A delightful framework for converting HTML to native Swift classes.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        A delightful framework for converting HTML to native Swift classes as well as generating HTML from native Swift classes and attributes.
                       DESC

  s.homepage         = 'https://github.com/drumbart/SwiftyHTML'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bartek Tułodziecki' => 'bartek.tulodziecki@gmail.com' }
  s.source           = { :git => 'https://github.com/drumbart/SwiftyHTML.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftyHTML/Classes/**/*.{swift}'

  s.pod_target_xcconfig = { 
    'SWIFT_VERSION' => '3.0',
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'OTHER_LDFLAGS' => '"$(inherited)" "-lxml2" "-objc"'
  }

  s.library = 'xml2'
  s.frameworks = 'Foundation'
  s.dependency 'Kanna', '~> 2.1.0'

  # s.resource_bundles = {
  #   'SwiftyHTML' => ['SwiftyHTML/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
