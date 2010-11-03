require "rake/extensiontask"
Rake::ExtensionTask.new("sieve") do |extension|
  extension.lib_dir = "lib/sieve"
end

task :build => [:clean, :compile]
