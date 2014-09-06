# encoding: utf-8

APP_NAME = "rex"
VERSION  = "2.0.2"

Gem::Specification.new do |s|
  s.name                  = APP_NAME
  s.version               = VERSION
  s.homepage              = "https://github.com/rapid7/rex/"
  s.summary               = "Ruby Exploitation Library"
  s.description           = "Rex provides a variety of classes useful for security testing and exploit development."
  s.license               = "BSD"
  s.authors               = ["HD Moore", "Jacob Hammack"]
  s.email                 = ["hd_moore@rapid7.com", "jacob.hammack@hammackj.com"]
  s.files                 = Dir['rex.gemspec'] + Dir['examples/**'] + Dir['lib/rex.rb'] + Dir['lib/**/*']
  s.require_paths         = ["lib"]
  s.extra_rdoc_files      = ["README.markdown"]
  s.platform              = "ruby"
  s.required_ruby_version = ">= 1.9.3"
end
