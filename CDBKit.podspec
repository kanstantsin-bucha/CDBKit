#
# Be sure to run `pod lib lint CDBKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

@version = "1.4.3"

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

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc = true

  s.subspec 'Core' do |core|
      core.source_files = 'Pod/Classes/Core/**/*'
  end

  s.subspec 'UI' do |ui|
      ui.source_files = 'Pod/Classes/UI/**/*'
      ui.ios.frameworks = 'UIKit'
      ui.osx.frameworks = 'AppKit'
  end

  s.subspec 'Localize' do |localize|
      localize.source_files = 'Pod/Classes/Localize/**/*'
  end

  s.subspec 'Array' do |array|
      array.source_files = 'Pod/Classes/Array/**/*'
  end

  s.source_files = 'Pod/Classes/*.{h,m}'
  s.framework = 'Foundation'

end
