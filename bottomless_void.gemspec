Gem::Specification.new do |s|
  s.name = 'bottomless_void'
  s.version = '0.0.1'
  s.licenses = ['MIT']
  s.summary = 'instantiates other instances of NilClass'
  s.authors = ['packrat386']

  s.require_paths = ['lib']
  s.extensions = ['ext/bottomless_void/extconf.rb']
  s.files = [
    'lib/bottomless_void.rb',
    'ext/bottomless_void/bottomless_void.c'
  ]

  s.add_development_dependency "rake", '~> 12.3'
  s.add_development_dependency "rake-compiler", '~> 1.0'
  s.add_development_dependency "rspec", '~> 3.8'
end
