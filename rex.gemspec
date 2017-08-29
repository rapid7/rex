# encoding: utf-8

APP_NAME = "rex"
VERSION  = "2.0.12"

Gem::Specification.new do |s|
  s.name                  = APP_NAME
  s.version               = VERSION
  s.homepage              = "https://github.com/rapid7/rex/"
  s.summary               = "Ruby Exploitation Library"
  s.description           = "Rex provides a variety of classes useful for security testing and exploit development."
  s.license               = "BSD-3-Clause"
  s.authors               = ["HD Moore", "Jacob Hammack"]
  s.email                 = ["x@hdm.io", "jacob.hammack@hammackj.com"]
  s.files                 = Dir['rex.gemspec'] + Dir['examples/**'] + Dir['lib/rex.rb'] + Dir['lib/**/*']
  s.require_paths         = ["lib"]
  s.extra_rdoc_files      = ["README.markdown"]
  s.platform              = "ruby"
  s.required_ruby_version = ">= 2.2.0"

  # Needed for Javascript obfuscation
  s.add_runtime_dependency 'jsobfu', '~> 0'

  # Needed for some admin modules (scrutinizer_add_user.rb)
  s.add_runtime_dependency 'json', '~> 2'

  # Metasm compiler/decompiler/assembler
  s.add_runtime_dependency 'metasm', '~> 1'

  # Needed by anemone crawler
  s.add_runtime_dependency 'nokogiri', '~> 1'

  # Command line editing, history, and tab completion in msfconsole
  s.add_runtime_dependency 'rb-readline', '~> 0'

  # Needed so that disk size output isn't horrible
  s.add_runtime_dependency 'filesize', '~> 0'
end
