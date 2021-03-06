lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "huginn_sms77_agent"
  spec.version       = '0.0.1'
  spec.authors       = ["sms77 e.K."]
  spec.email         = ["support@sms77.io"]

  spec.summary       = %q{Send SMS & Text2Voice messages from Huginn via https://sms77.io.}
  spec.description   = %q{Send SMS & Text2Voice messages from Huginn via https://sms77.io.}
  spec.homepage      = "https://github.com/sms77io/huginn"

  spec.license       = "MIT"


  spec.files         = Dir['LICENSE', 'lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir['spec/**/*.rb'].reject { |f| f[%r{^spec/huginn}] }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "huginn_agent"
end