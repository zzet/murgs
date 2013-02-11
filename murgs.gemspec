# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','murgs','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'murgs'
  s.version = Murgs::VERSION
  s.authors = ['Andrew Kumanyaev', 'Andrew Kulakov']
  s.email = ['me@zzet.org', 'avk@8xx8.ru"']
  s.homepage = 'https://github.com/zzet/murgs'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Multi user ruby git server'
# Add your other files here if you make them
  s.files = %w(
bin/murgs
lib/murgs/version.rb
lib/murgs.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','murgs.rdoc']
  s.rdoc_options << '--title' << 'murgs' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'murgs'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.4')
end
