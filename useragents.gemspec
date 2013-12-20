Gem::Specification.new do |s|
  s.name          = "useragents"
  s.version       = "0.1.1"

  s.authors       = "debbbbie"
  s.date          = "2013-12-20"
  s.description   = "Generate a random User-Agent for you. A place holder, coming soon!"
  s.email         = "debbbbie@163.com"
  s.files         = ["useragents.gemspec", "lib/useragents.rb", "lib/core_ext/blank.rb", "lib/fetch.rb", "lib/useragents.txt", "spec/useragents_spec.rb", "README.md"]
  s.homepage      = "https://github.com/debbbbie/useragents-rb"
  s.require_paths = ["lib"]
  s.summary       = "Generate a random User-Agent for you, use for spiders or anything."


  #s.add_dependency "growl"

  s.add_development_dependency "rspec"

end