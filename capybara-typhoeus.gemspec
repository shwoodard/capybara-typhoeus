# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{capybara-typhoeus}
  s.version = "0.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joseph HALTER", "Jonathan TRON"]
  s.date = %q{2011-04-22}
  s.summary = %q{Typhoeus driver for Capybara}
  s.description = %q{Typhoeus driver for Capybara, allowing testing of REST APIs}

  s.email = %q{joseph.halter@thetalentbox.com}
  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.md)
  s.homepage = %q{https://github.com/TalentBox/capybara-typhoeus}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}

  s.add_runtime_dependency(%q<capybara>, ["~> 2.1"])
  s.add_runtime_dependency(%q<typhoeus>, ["0.6.7"])

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rack"
  s.add_development_dependency "sinatra"
end
