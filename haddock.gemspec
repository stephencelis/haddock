Gem::Specification.new do |s|
  s.date = "2010-01-04"

  s.name = "haddock"
  s.version = "0.2.2"
  s.summary = %q{A more memorable password generator}
  s.description = %q{A more memorable password generator. Swordfish? No, I got tired of that. I changed it.}

  s.files = [".autotest", "History.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "bin/ha-gen", "lib/haddock.rb", "test/names.txt", "test/test_haddock.rb"]
  s.executables = ["ha-gen"]
  s.default_executable = "ha-gen"
  s.require_paths = ["lib"]
  s.test_file = "test/test_haddock.rb"

  s.extra_rdoc_files = ["History.rdoc", "Manifest.txt", "README.rdoc"]
  s.rdoc_options = %w(--main README.rdoc)

  s.author = "Stephen Celis"
  s.email = "stephen@stephencelis.com"
  s.homepage = "http://github.com/stephencelis/haddock"
  s.rubyforge_project = "haddock"
end
