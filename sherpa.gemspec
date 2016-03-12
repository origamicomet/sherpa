$:.push File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
require 'sherpa/gem'

Gem::Specification.new do |s|
  s.name              = Sherpa::Gem.name
  s.version           = Sherpa::Gem.version
  s.platform          = Gem::Platform::RUBY
  s.author            = Sherpa::Gem.author.name
  s.email             = Sherpa::Gem.author.email
  s.homepage          = Sherpa::Gem.homepage
  s.summary           = Sherpa::Gem.summary
  s.description       = Sherpa::Gem.description
  s.license           = Sherpa::Gem.license

  s.required_ruby_version = '>= 2.0.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_dependency 'gli', '~> 2'
end
