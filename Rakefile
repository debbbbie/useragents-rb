require 'rake/testtask'

task :default => [:test]
Rake::TestTask.new(:test) do |test|
  test.libs << 'spec'

  test.test_files = FileList['spec/*_spec.rb']

  test.verbose = true
end