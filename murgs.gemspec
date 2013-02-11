# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'murgs/version'

Gem::Specification.new do |gem|
  gem.name          = "murgs"
  gem.version       = Murgs::VERSION
  gem.authors       = ["Andrey Kumanyaev", "Andrew Kulakov"]
  gem.email         = ["me@zzet.org", "avk@8xx8.ru"]
  gem.description   = %q{Multi user git server on Ruby}
  gem.summary       = %q{Multi user git server on Ruby}
  gem.homepage      = "https://github.com/zzet/murgs"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.bindir        = 'bin'

  gem.rubyforge_project = "murgs"

  gem.platform      = Gem::Platform::RUBY

  gem.has_rdoc      = true
  gem.extra_rdoc_files = ['README.rdoc','murgs.rdoc']
  gem.rdoc_options << '--title' << 'murgs' << '--main' << 'README.rdoc' << '-ri'


  gem.add_development_dependency('rake')
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('aruba')
  gem.add_runtime_dependency('gli','2.5.4')
end
