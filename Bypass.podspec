Pod::Spec.new do |s|
	s.name = 'Bypass'
	s.version = '1.0.1.1-dhap'
	s.license = 'Apache License Version 2.0'
	s.summary = 'Bypass - Bypass renders markdown directly to UIViews instead of using an intermediary HTML format.'
	s.homepage = 'http://uncodin.github.io/bypass/'
	s.authors = { 'Damian Carrillo' => 'damian@uncod.in', 'Colin Edwards' => 'colin@uncod.in' }
	s.source = { :git => 'https://github.com/dhapdigital/bypass-ios.git', :tag => "#{s.version}", :submodules => true }

	s.ios.deployment_target = '6.0'
	s.tvos.deployment_target = '9.0'

	s.frameworks = 'Foundation', 'UIKit', 'QuartzCore', 'CoreGraphics', 'CoreText'
	s.libraries = 'stdc++'
	s.compiler_flags = '-stdlib=libc++'

	s.source_files = 'Bypass/*.{h,m,mm}', 'Libraries/bypass-core/src/**/*.{h,c,cpp}'
	s.private_header_files = 'Bypass/*Private.h', 'Libraries/bypass-core/src/**/*.h'
	s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/Libraries/bypass-core" }
end
