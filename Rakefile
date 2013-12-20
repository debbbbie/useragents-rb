task :default => [:spec]
task :spec do
  sh('rspec spec')
end

namespace :useragents do
  task :fetch do
    require File.expand_path('../lib/fetch', __FILE__)
    include UserAgents
    fetch()
  end
end
