# frozen_string_literal: true

require_relative "lib/baby_squeel/version"

Gem::Specification.new do |spec|
  spec.name          = "baby_squeel"
  spec.version       = BabySqueel::VERSION
  spec.authors       = ["Ray Zane"]
  spec.email         = ["raymondzane@gmail.com"]

  spec.summary       = "An expressive query DSL for Active Record 4 and 5."
  spec.homepage      = 'https://github.com/rzane/baby_squeel'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency "activerecord", ">= 5.2", "< 7"
end
