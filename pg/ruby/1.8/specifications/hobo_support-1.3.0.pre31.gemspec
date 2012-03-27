# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hobo_support}
  s.version = "1.3.0.pre31"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Locke"]
  s.date = %q{2011-03-28}
  s.description = %q{Core Ruby extensions from the Hobo project}
  s.email = %q{tom@tomlocke.com}
  s.homepage = %q{http://hobocentral.net}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{hobo}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Core Ruby extensions from the Hobo project}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<rubydoctest>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rubydoctest>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rubydoctest>, [">= 0"])
  end
end
