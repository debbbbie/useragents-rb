task :default => [:spec]
task :spec do
  sh('rspec spec')
end

namespace :useragents do
  require_relative 'lib/useragents'

  task :fetch do
    UserAgents.fetch
  end
end
