# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nats_listener_core/version'

Gem::Specification.new do |spec|
  spec.name          = 'nats_listener_core'
  spec.version       = NatsListenerCore::VERSION
  spec.authors       = ['Igor Pavlov']
  spec.email         = ['gophan1992@gmail.com']

  spec.summary       = 'Base gem for nats_listener. It defines common logic for both nats and nats streaming subscribers gems.'
  spec.description   = "This gem implements basic logic for nats listeners. It's created for modular purpose."
  spec.homepage      = 'https://github.com/beastia/nats_listener_core'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter', '0.4.1'
end
