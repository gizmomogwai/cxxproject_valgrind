require 'rake/clean'
require 'rubygems/package_task'

desc "Default Task"
task :default => [:install]

PKG_VERSION = "1.0.6"
PKG_FILES = FileList[
  "lib/**/*.rb",
  "Rakefile.rb",
  "spec/**/*.rb",
]

spec = Gem::Specification.new do |s|
  s.name = "cxxproject_valgrind"
  s.version = PKG_VERSION
  s.summary = "valgrind plugin for cxxproject."
  s.description = <<-EOF
    provides valgrind executable environment.
  EOF
  s.files = PKG_FILES.to_a
  s.require_path = "lib"
  s.author = "christian koestlin"
  s.email = "christian.koestlin@gmail.com"
  s.homepage = 'http://marcmo.github.com/cxxproject/'
  s.add_dependency("cxxproject")
end

Gem::PackageTask.new(spec) {|pkg|}

desc "install gem"
task :install => [:gem] do
  sh "gem install pkg/#{spec.name}-#{spec.version}.gem"
end
