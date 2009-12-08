# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haddock}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen Celis"]
  s.date = %q{2009-05-14}
  s.default_executable = %q{ha-gen}
  s.description = %q{A more memorable password generator. Swordfish? No, I got tired of that. I
changed it.}
  s.email = ["stephen@stephencelis.com"]
  s.executables = ["ha-gen"]
  s.extra_rdoc_files = ["History.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", "History.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "bin/ha-gen", "lib/haddock.rb", "test/names.txt", "test/test_haddock.rb"]
  s.homepage = %q{http://github.com/stephencelis/haddock}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{haddock}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{A more memorable password generator}
  s.test_files = ["test/test_haddock.rb"]
end
