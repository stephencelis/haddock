# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haddock}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen Celis"]
  s.date = %q{2009-03-29}
  s.default_executable = %q{haddock}
  s.description = %q{A more memorable password generator. Swordfish? No, I got tired of that. I changed it.}
  s.email = ["stephen@stephencelis.com"]
  s.executables = ["haddock"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/haddock", "lib/haddock.rb", "test/names.txt", "test/test_haddock.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/stephencelis/haddock}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{haddock}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A more memorable password generator}
  s.test_files = ["test/test_haddock.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.11.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.11.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.11.0"])
  end
end
