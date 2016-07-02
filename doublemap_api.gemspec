require_relative 'lib/doublemap_api/version'

Gem::Specification.new do |spec|
  spec.platform       = Gem::Platform::RUBY
  spec.name           = 'doublemap_api'
  spec.authors        = [ 'Jon Egeland' ]
  spec.email          = 'jonegeland@gmail.com'
  spec.homepage       = 'http://github.com/propershark/doublemap_api'
  spec.summary        = 'A Ruby client for the DoubleMap real-time transit API.'
  spec.description    = 'A Ruby client for the DoubleMap real-time transit API. The major version of this gem will match the version of the DoubleMap API that it is built for (e.g., 2.0.0 -> v2).'
  spec.license        = 'MIT'
  spec.version        = DoubleMap::VERSION.dup
  spec.required_ruby_version = '>= 2.2.0'

  spec.files             = Dir['lib/**/*']
  spec.require_paths     = %w[ lib ]
  spec.extra_rdoc_files  = ['LICENSE']

  spec.add_dependency 'httparty', '~> 0.13'
  spec.add_dependency 'memoist',  '~> 0.14'
end
