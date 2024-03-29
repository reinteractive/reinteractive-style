lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reinteractive/style/version"

Gem::Specification.new do |spec|
  spec.name          = "reinteractive-style"
  spec.version       = Reinteractive::Style::VERSION
  spec.authors       = ["reinteractive"]
  spec.email         = ["team@reinteractive.com"]

  spec.summary       = "reinteractive shared style configurations"
  spec.homepage      = "https://github.com/reinteractive/reinteractive-style"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this section
  # to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.14"
  spec.add_dependency "rubocop-rails", "~> 2.5"
  spec.add_dependency "rubocop-rspec", "~> 2.0.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"
end
