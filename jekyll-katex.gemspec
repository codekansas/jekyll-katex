# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jekyll/katex/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-katex'
  spec.version       = Jekyll::Katex::VERSION
  spec.authors       = ['Jerry Lin']
  spec.email         = ['linjer@gmail.com']

  spec.summary       = %q{Jekyll plugin for easy KaTeX math server-side rendering.}
  spec.description   = %q{Adds a liquid tag you can use to do server-side rendering of latex math using KaTeX}
  spec.homepage      = 'http://www.github.com'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) } <<
                           'lib/node_modules'
  spec.bindir        = 'bin'
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'jekyll', '~> 3.0'
  spec.add_runtime_dependency 'execjs', '~> 2.7.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
