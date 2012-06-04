# -*- encoding: utf-8 -*-
require File.expand_path('../lib/./version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Slotos"]
  gem.email         = ["slotos@gmail.com"]
  gem.description   = %q{Implementation of globalize_fields - has_many friendly Globalize3 helper for ActiveAdmin.}
  gem.summary       = %q{Globalize3 helper for ActiveAdmin.}
  gem.homepage      = "https://github.com/mimimi/ActiveAdmin-Globalize3-inputs"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "ActiveAdmin-Globalize3-inputs"
  gem.require_paths = ["lib"]
  gem.version       = GlobalizeAAInputs::VERSION

  gem.add_dependency "globalize3"
  gem.add_dependency "activeadmin"
end
