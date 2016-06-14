
Gem::Specification.new do |s|
  s.name         = 'knuckleheads_game'
  s.version      = '1.0.0'
  s.author       = 'Chelsea Lawrence'
  s.email        = 'chelseahlaw@gmail.com'
  s.homepage     = 'https://github.com/ChelseaLawrence'
  s.summary      = 'A game created as part of the Pragmatic Studio Ruby Programming Course'
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['MIT']

  s.files         = Dir['{bin,lib,spec}/**/*'] + %w(LICENSE README)
  s.test_files    = Dir['spec/**/*']
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
