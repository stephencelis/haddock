$: << File.dirname(__FILE__) + "/lib"
require "rubygems"
require "haddock"

require "rake/testtask"

desc "Default: run unit tests."
task :default => :test

desc "Run unit tests."
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/test_*.rb'
  t.verbose = true
end
