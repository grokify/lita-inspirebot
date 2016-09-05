Gem::Specification.new do |spec|
  spec.name          = 'lita-inspirebot'
  spec.date          = '2016-09-05'
  spec.version       = '0.0.3'
  spec.authors       = ['John Wang']
  spec.email         = ['johncwang@gmail.com']
  spec.description   = 'A Lita handler for inspirational quotes.'
  spec.summary       = 'A Lita handler for inspirational quotes.'
  spec.homepage      = 'https://github.com/grokify/lita-inspirebot'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  #spec.files         = `git ls-files`.split($RS)
  spec.files         = Dir['lib/**/**/*']
  spec.files        += Dir['[A-Z]*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pretty_table'
  spec.add_development_dependency 'uuid'
  spec.add_development_dependency 'rspec', '>= 3.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end