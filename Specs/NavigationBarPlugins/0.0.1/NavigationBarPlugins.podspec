Pod::Spec.new do |s|
  s.name         = "NavigationBarPlugins"
  s.version      = "0.0.1"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.summary      = "NavigationBarPlugins"
  s.description  = "Navigation Bar Plugins stores all navigation bar plugins"
  s.homepage     = "https://applicaster.com"
	s.license      = ''
	s.author       = "Applicaster LTD."
	s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/NavigationBarPlugins_Framework_0.0.1_c12b01f7c46d1aa0e8a05a8c5cbfcf87831182d3.zip"
  }
  s.default_subspec = 'Basic'
  s.requires_arc    = true
  s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
                 'SWIFT_VERSION' => '4.0'}

  s.subspec 'Basic' do |basic|
    basic.dependency 'CocoaLumberjack/Swift'
    basic.dependency 'ZappPlugins'
    basic.dependency 'ApplicasterSDK'
    basic.vendored_frameworks = 'NavigationBarPluginsBase.framework'

  end
end
