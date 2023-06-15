Pod::Spec.new do |s|
  s.name                  = 'WrappingHStackLayout'
  s.version               = '0.1.3'
  s.summary               = 'WrappingHStack (FlowLayout) is a SwiftUI component similar to HStack that wraps horizontally overflowing subviews onto the next lines.'
  s.homepage              = 'https://github.com/ksemianov/WrappingHStack'
  s.authors               = 'Konstantin Semianov <ksemianov>'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.swift_version         = '5'
  s.ios.deployment_target = '16.0'
  s.osx.deployment_target = '13.0'
  s.source                = { :git => 'https://github.com/ksemianov/WrappingHStack.git', :tag => s.version }
  s.source_files          = 'Sources/WrappingHStack/*.swift'
end
