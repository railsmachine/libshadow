$LOAD_PATH << File.join(File.dirname(__FILE__), "lib")
require "shadow"

Gem::Specification.new do |s|
  s.name             = %q{libshadow}
  s.summary          = %q{libshadow of Eratosthenes}
  s.description      = %q{Ruby C Extension for the libshadow of Eratosthenes}
  s.homepage         = %q{http://github.com/railsmachine/libshadow}
  s.version          = Shadow::VERSION
  s.authors          = ["Jesse Newland", "Lee Jones"]
  s.email            = %q{ops@railsmachine.com}

  s.rubygems_version = %q{1.3.7}
  s.date             = %q{2010-11-03}

  s.require_paths = ["lib"]
  s.extensions = ["ext/libshadow/extconf.rb"]
  s.files      = %x{git ls-files}.split("\n").reject {|file| file =~ /^(features|cucumber)/ }
  s.test_files = %x{git ls-files}.split("\n").select {|file| file =~ /^(features|cucumber)/ }
end

