require_relative 'lib/bolt_taskgen/version'

Gem::Specification.new do |spec|
  spec.name          = 'bolt_taskgen'
  spec.homepage      = 'https://github.com/Sharpie/bolt_taskgen'
  spec.version       = BoltTaskgen::VERSION
  spec.authors       = ['Charlie Sharpsteen']
  spec.email         = ['source@sharpsteen.net']

  spec.summary       = 'Generate Bolt Tasks from Bolt metadata'
  spec.description   = 'A tool for generating and updating Bolt Tasks based on metadata'
  spec.license       = 'MIT'

  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.files         = ['LICENSE.txt',
                        'README.md',
                        Dir.glob('bin/*'),
                        Dir.glob('lib/**/*.rb')].flatten
  spec.require_paths = ['lib']
  spec.bindir        = 'bin'

  spec.executables   = ['bolt-taskgen']

  spec.add_runtime_dependency 'parser', '~> 2.7'

  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'yard', '~> 0.9'
end
