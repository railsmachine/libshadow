#                                          -*- ruby -*-
# extconf.rb
#
# Modified at: <1999/8/19 06:38:55 by ttate> 
#

require 'mkmf'

$CPPFLAGS = RUBY_VERSION =~ /1\.8/ ? '-DRUBY18' : ''

if( ! (ok = have_library("shadow","getspent")) )
  ok = have_func("getspent")
end

ok &= have_func("fgetspent")
ok &= have_func("setspent")
ok &= have_func("endspent")
ok &= have_func("lckpwdf")
ok &= have_func("ulckpwdf")

if ok
  if ! have_func("sgetspent")
    $CPPFLAGS += '-DSOLARIS'
  end
  create_makefile("shadow")
end
