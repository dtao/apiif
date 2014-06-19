require './lib/apiif/version'

Gem::Specification.new do |s|
  s.name        = 'apiif'
  s.version     = Apiif::VERSION
  s.summary     = "Specify your API in folders"
  s.description = "A gem that exposes an API based on folder structure"
  s.authors     = ["Dan Tao"]
  s.email       = 'daniel.tao@gmail.com'
  s.files       = Dir.glob('lib/**/*.rb')
  s.executables = ['apiif']
  s.homepage    = 'https://github.com/dtao/apiif'
  s.license     = 'MIT'

  s.add_runtime_dependency 'sinatra', '~> 1.0'
end
