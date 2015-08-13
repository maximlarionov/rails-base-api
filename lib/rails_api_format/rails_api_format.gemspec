$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'rails_api_format/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rails_api_format'
  s.version     = RailsApiFormat::VERSION
  s.authors     = ['Timur Vafin']
  s.email       = ['timur.vafin@flatstack.com']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of RailsApiFormat.'
  s.description = 'TODO: Description of RailsApiFormat.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2.3'
  s.add_dependency 'active_model_serializers', '~> 0.8.3'
  s.add_dependency 'devise', '~> 3.5.1'
  s.add_dependency 'responders', '~> 2.1.0'
end
