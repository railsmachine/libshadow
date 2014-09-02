Gem::Specification.new do |s|
  s.name             = %q{libshadow}
  s.summary          = %q{shadow.h}
  s.description      = %q{Ruby C Extension for shadow access}
  s.homepage         = %q{http://github.com/railsmachine/libshadow}
  s.version          = '1.0.1'
  s.authors          = ["Jesse Newland", "Lee Jones"]
  s.email            = %q{ops@railsmachine.com}

  s.date             = %q{2014-09-02}

  s.require_paths = ["lib"]
  s.extensions = ["ext/shadow/extconf.rb"]
  s.files      = %x{git ls-files}.split("\n").reject {|file| file =~ /^(features|cucumber)/ }
  s.test_files = %x{git ls-files}.split("\n").select {|file| file =~ /^(features|cucumber)/ }
end

