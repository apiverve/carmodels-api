Pod::Spec.new do |s|
  s.name             = 'APIVerveUSCarModels'
  s.version          = '1.2.3'
  s.summary          = 'US Car Models is a car make and model API for vehicles sold in the United States from 1984 to present.'
  s.description      = <<-'DESC'
US Car Models is a car make and model API for vehicles sold in the United States from 1984 to present. List models by make on any plan, while paid plans add year filters, trims, fuel economy (MPG), engine details, and transmission specifications.

This iOS/macOS SDK provides a convenient way to access the US Car Models from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/carmodels?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/carmodels-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveUSCarModels/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
