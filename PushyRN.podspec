require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = 'PushyRN'
  s.version         = package['version']
  s.summary         = package['description']
  s.homepage        = package['homepage']

  s.author          = package['author']
  s.license         = package['license']

  s.platform        = :ios
  s.source          = { :git => 'https://github.com/odellamaggiore/pushy-react-native.git', :tag => s.version }
  s.source_files    = '**/*.{h,m,swift}'
  s.requires_arc    = true

  s.ios.deployment_target  = '9.0'
  s.swift_version = '4.2'

  s.dependency 'React'
  s.dependency 'Pushy'
end
