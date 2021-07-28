# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name          = "ipgeobase"
  spec.version       = Ipgeobase::VERSION
  spec.authors       = ["maxprotasov"]
  spec.email         = ["mo2k4k@yandex.ru"]

  spec.summary       = "Summary"
  spec.homepage      = "https://gitlab.com/hexlethq/programs/rails/hexlet-groups/rails-19/132830/-/tree/main/exercises"
  spec.required_ruby_version = "= 3.0.1"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://gitlab.com/hexlethq/programs/rails/hexlet-groups/rails-19/132830/-/tree/main/exercises"
  spec.metadata["changelog_uri"] = "https://gitlab.com/hexlethq/programs/rails/hexlet-groups/rails-19/132830/-/tree/main/exercises/gems-inside"

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
end
