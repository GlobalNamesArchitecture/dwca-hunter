# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dwca_hunter/version"

Gem::Specification.new do |gem|
  gem.required_ruby_version = ">= 2.4"
  gem.name          = "dwca_hunter"
  gem.version       = DwcaHunter.version
  gem.license       = "MIT"
  gem.authors       = ["Dmitry Mozzherin"]
  gem.email         = ["dmozzherin@gmail.com"]

  gem.summary       = "Converts a variety of available online resources to " \
                      "DarwinCore Archive files."
  gem.description   = "Gem harvests data from a variety of formats and " \
                      "converts incoming data to DwCA format."
  gem.homepage      = "https://github.com/GlobalNamesArchitecture/dwca_hunter"

  gem.files         = `git ls-files -z`.
                      split("\x0").
                      reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir        = "exe"
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "dwc-archive", "~> 1.0"
  gem.add_dependency "gn_uuid", "~> 0.5"
  gem.add_dependency "nokogiri", "~> 1.8"
  gem.add_dependency "rest-client", "~> 2.0"
  gem.add_dependency "thor", "~> 0.19"

  gem.add_development_dependency "bundler", "~> 1.16"
  gem.add_development_dependency "byebug", "~> 10.0"
  gem.add_development_dependency "coveralls", "~> 0.8"
  gem.add_development_dependency "rake", "~> 12.3"
  gem.add_development_dependency "rspec", "~> 3.7"
  gem.add_development_dependency "rubocop", "~> 0.58"
  gem.add_development_dependency "solargraph", "~> 0.23"
end