require "bundler/gem_tasks"
require 'rake/testtask'

desc "Runs all tests"
Rake::TestTask.new do |t|
  t.pattern = "test/*_test.rb"
end

task default: :test
