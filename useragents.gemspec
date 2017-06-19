Gem::Specification.new do |s|
  s.name          = 'useragents'
  s.version       = '0.1.6'

  s.authors       = 'debbbbie'
  s.date          = '2017-06-19'
  s.description   = 'Generate a random User-Agent for you'
  s.email         = 'debbbbie@163.com'
  s.files         = ['useragents.gemspec', 'lib/useragents.rb', 'lib/core_ext/blank.rb', 'spec/useragents_spec.rb', 'README.md', 'LICENSE']
  s.homepage      = 'https://github.com/debbbbie/useragents-rb'
  s.require_paths = ['lib']
  s.summary       = 'Generate a random User-Agent for you, use for spiders or anything.'
  s.license       = 'MIT'

  s.add_dependency 'nokogiri'

  s.add_development_dependency 'rspec'

end
