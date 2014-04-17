# encoding: utf-8

require "rubygems"
require "bundler"
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require "rake"

require "jeweler"
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "has_heartbeat"
  gem.homepage = "http://github.com/awexome/has_heartbeat"
  gem.license = "MIT"
  gem.summary = %Q{Application heartbeat monitor for Rails}
  gem.description = %Q{Simple heartbeat monitoring target for Rails apps with database connection testing, customizable output, HTTP status code, and Airbrake notification.}
  gem.email = "engineering@awexomelabs.com"
  gem.authors = ["Awexome Labs"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require "rspec/core"
require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |spec|
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.rcov = true
end

task :default => :spec

# require "rake/testtask"
# Rake::TestTask.new(:test) do |test|
#   test.libs << "lib" << "test"
#   test.pattern = "test/**/test_*.rb"
#   test.verbose = true
# end

# require "rcov/rcovtask"
# Rcov::RcovTask.new do |test|
#   test.libs << "test"
#   test.pattern = "test/**/test_*.rb"
#   test.verbose = true
#   test.rcov_opts << "--exclude "gems/*""
# end

# task :default => :test

require "rdoc/task"
Rake::RDocTask.new do |rdoc|
  version = File.exist?("VERSION") ? File.read("VERSION") : ""

  rdoc.rdoc_dir = "rdoc"
  rdoc.title = "DoesKeyValue #{version}"
  rdoc.rdoc_files.include("README*")
  rdoc.rdoc_files.include("lib/**/*.rb")
end
