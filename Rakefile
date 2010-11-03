require "rake/extensiontask"
Rake::ExtensionTask.new("shadow") do |extension|
  extension.lib_dir = "lib/shadow"
end

task :build => [:clean, :compile]
