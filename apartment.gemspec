# -*- encoding: utf-8 -*-
$: << File.expand_path("../lib", __FILE__)
require "apartment/version"

Gem::Specification.new do |s|
  s.name = %q{apartment}
  s.version = Apartment::VERSION

  s.authors = ["Ryan Brunner", "Brad Robertson"]
  s.summary = %q{A Ruby gem for managing database multitenancy in Rails applications}
  s.description = %q{Apartment allows Rails applications to deal with database multitenancy}
  s.email = %w{ryan@ryanbrunner.com bradleyrobertson@gmail.com}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")

  s.homepage = %q{http://github.com/bradrobertson/apartment}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}

  s.add_dependency 'activerecord',    '>= 3.1.2'   # must be >= 3.1.2 due to bug in prepared_statements
  s.add_dependency 'rack',            '>= 1.3.6'

  s.add_development_dependency 'rails', '>= 3.1.2'
  s.add_development_dependency 'rake', '~> 0.9.2'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec', '~> 2.8.0'
  s.add_development_dependency 'rspec-rails', '~> 2.8.1'
  s.add_development_dependency 'capybara', '~> 1.0.0'
  s.add_development_dependency 'pg', '>= 0.11.0'
  s.add_development_dependency 'mysql2', '~> 0.3.10'
  s.add_development_dependency 'delayed_job', '~> 3.0'
  s.add_development_dependency 'delayed_job_active_record'
end
