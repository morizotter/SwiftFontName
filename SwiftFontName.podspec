#
# Be sure to run `pod lib lint SwiftFontFamily.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SwiftFontName"
  s.version          = "1.0.0"
  s.summary          = "SwiftFontName is font name complements and supports localized font library."
  s.description      = <<-DESC
                       You don't need to search font name any more with SwiftFontName. When using UIFont, you sometimes search font name string because UIFont needs string font name value. Font family name and font name don't have organized naming rule, so it's painful to search correct string. With SwiftFontName, font name candidates shows up when you put first word of font family name.
                       DESC
  s.homepage         = "https://github.com/morizotter/SwiftFontName"
  s.screenshots     = "https://raw.githubusercontent.com/morizotter/SwiftFontName/master/misc/helvetica.png"
  s.license          = 'MIT'
  s.author           = { "Naoki Morita" => "namorit@gmail.com" }
  s.source           = { :git => "https://github.com/morizotter/SwiftFontName.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/morizotter'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'SwiftFontName/**/*'
  end
