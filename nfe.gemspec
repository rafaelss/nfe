# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nfe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rafael Souza"]
  gem.email         = ["me@rafaelss.com"]
  gem.description   = %q{Gem para geração de nota fiscal eletrônica}
  gem.summary       = %q{Gem para geração de nota fiscal eletrônica}
  gem.homepage      = "http://github.com/rafaelss/nfe"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "nfe"
  gem.require_paths = ["lib"]
  gem.version       = Nfe::VERSION

  gem.add_dependency "mustache", "~> 0.99.4"

  gem.add_development_dependency "rspec", "~> 2.8.0"
  gem.add_development_dependency "nokogiri", "~> 1.5.2"
end
