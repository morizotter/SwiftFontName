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
  s.summary          = "Pure swift OS font selectoin library."
  s.description      = <<-DESC
                       OS Font selection from neat Swift.
                       DESC
  s.homepage         = "https://github.com/morizotter/SwiftFontName"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Naoki Morita" => "namorit@gmail.com" }
  s.source           = { :git => "https://github.com/morizotter/SwiftFontName.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/morizotter'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'SwiftFontName/**/*'
  # s.resource_bundles = {
  #   'SwiftFontFamily' => ['Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
