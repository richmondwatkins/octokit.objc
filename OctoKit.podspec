#
# Be sure to run `pod lib lint PINRemoteImage.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "OctoKit"
  s.version          = "0.7.7"
  s.summary          = "A thread safe, performant, feature rich image fetcher"
  s.homepage         = "https://github.com/pinterest/PINRemoteImage"
  s.license          = 'Apache 2.0'
  s.author           = { "Garrett Moon" => "garrett@pinterest.com" }
  s.source           = { :git => "https://github.com/octokit/octokit.objc", :tag => "0.7.7" }
  s.social_media_url = 'https://twitter.com/garrettmoon'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'OctoKit.{h,m}'

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'Mantle', '>= 2.0.5'
  s.dependency 'Quick', '~> 0.6.0'
  s.dependency 'Nimble', '2.0.0-rc.3'
  s.dependency 'ReactiveCocoa', '3.0.0'
  s.dependency 'ISO8601DateFormatter'

end