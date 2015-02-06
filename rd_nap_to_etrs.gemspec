Gem::Specification.new do |spec|
  spec.name = 'rd_nap_to_etrs'
  spec.version = '0.2'
  spec.required_ruby_version = '~> 2.0'
  spec.summary = 'Convert RD/NAP coordinates to ETRS'
  spec.description = 'Convert RD/NAP coordinates to ETRS following the 2008 standards'
  spec.email = 'bterkuile@gmail.com'
  spec.homepage = 'http://github.com/bterkuile/rd_nap_to_etrs'
  spec.author = 'Benjamin ter Kuile'
  spec.bindir = 'bin'
  spec.executable = 'rd_nap_to_etrs'
  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*'] + Dir['ext/**/*.so'] + Dir['ext/**/*.dll'] + Dir['ext/**/*.bundle']  + Dir['ext/**/*.grd']
  #spec.platform = Gem::Platform::CURRENT
  spec.require_paths = [ 'lib', 'ext' ]

  spec.add_development_dependency "rspec", "~> 3.1"
end
