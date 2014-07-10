# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: has_heartbeat 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "has_heartbeat"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Awexome Labs"]
  s.date = "2014-04-17"
  s.description = "Simple heartbeat monitoring target for Rails apps with database connection testing, customizable output, and HTTP status code."
  s.email = "engineering@awexomelabs.com"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
    "Gemfile",
    "Gemfile.lock",
    "README.rdoc",
    "ROADMAP.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/heartbeat_controller.rb",
    "config/routes.rb",
    "has_heartbeat.gemspec",
    "lib/has_heartbeat.rb",
    "lib/has_heartbeat/configuration.rb"
  ]
  s.homepage = "http://github.com/awexome/has_heartbeat"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Application heartbeat monitor for Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<bundler>, ["~> 1"])
      s.add_dependency(%q<jeweler>, ["~> 1.8"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<rspec>, ["~> 2.11"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<bundler>, ["~> 1"])
    s.add_dependency(%q<jeweler>, ["~> 1.8"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<rspec>, ["~> 2.11"])
  end
end

