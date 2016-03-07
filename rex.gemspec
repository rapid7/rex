# encoding: utf-8

APP_NAME = "rex"
VERSION  = "2.0.10"

Gem::Specification.new do |s|
  s.name                  = APP_NAME
  s.version               = VERSION
  s.homepage              = "https://github.com/rapid7/rex/"
  s.summary               = "Ruby Exploitation Library"
  s.description           = "Rex provides a variety of classes useful for security testing and exploit development."
  s.license               = "BSD"
  s.authors               = ["HD Moore", "Jacob Hammack"]
  s.email                 = ["x@hdm.io", "jacob.hammack@hammackj.com"]
  s.files                 = Dir['rex.gemspec'] + Dir['examples/**'] + Dir['lib/rex.rb'] + Dir['lib/**/*']
  s.require_paths         = ["lib"]
  s.extra_rdoc_files      = ["README.markdown"]
  s.platform              = "ruby"
  s.required_ruby_version = ">= 2.1.5"

  # Needed for Javascript obfuscation
  s.add_runtime_dependency 'jsobfu', '~> 0.4.1'

  # Needed for some admin modules (scrutinizer_add_user.rb)
  s.add_runtime_dependency 'json'

  # Metasm compiler/decompiler/assembler
  s.add_runtime_dependency 'metasm', '~> 1.0.2'

  # Needed by anemone crawler
  s.add_runtime_dependency 'nokogiri'

  # rb-readline doesn't work with Ruby Installer due to error with Fiddle:
  #   NoMethodError undefined method `dlopen' for Fiddle:Module
  unless Gem.win_platform?
    # Command line editing, history, and tab completion in msfconsole
    # Use the Rapid7 fork until the official gem catches up
    s.add_runtime_dependency 'rb-readline-r7'
  end

  # Needed by anemone crawler
  s.add_runtime_dependency 'robots'

  # Needed so that disk size output isn't horrible
  s.add_runtime_dependency 'filesize'

end
