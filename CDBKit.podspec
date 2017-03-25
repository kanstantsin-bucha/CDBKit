#
# Be sure to run `pod lib lint CDBKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

@version = "1.0.1"

Pod::Spec.new do |s|
  s.name             = "CDBKit"
  s.version          = @version
  s.summary          = "Bunch of usful defines and types"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
    Bunch of usful defines and types out of the box.
    Used for logging, localization, inheritance warnings and more.
                       DESC

  s.homepage         = "https://github.com/truebucha/CDBKit"
  s.license          = 'MIT'
  s.author           = { "truebucha" => "truebucha@gmail.com" }
  s.source           = { :git => "https://github.com/truebucha/CDBKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/truebucha'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
