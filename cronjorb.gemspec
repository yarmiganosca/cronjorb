
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cronjorb/version"

Gem::Specification.new do |spec|
  spec.name          = "cronjorb"
  spec.version       = Cronjorb::VERSION
  spec.authors       = ["Chris Hoffman"]
  spec.email         = ["yarmiganosca@gmail.com"]

  spec.summary       = "A small framework for running ruby scripts as cron jobs."
  spec.description   = "A small framework for running ruby scripts as cron jobs."
  spec.homepage      = "https://www.github.com/yarmiganosca/cronjorb"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
