# -*- encoding: utf-8 -*-
gem_name = 'cxxproject_valgrind'
require File.expand_path("lib/#{gem_name}/version")

spec = Gem::Specification.new do |s|
  s.name = gem_name
  s.version = CxxprojectValgrind::VERSION
  s.summary = "valgrind plugin for cxxproject."
  s.description = <<-EOF
    provides valgrind executable environment.
  EOF
  s.files = `git ls-files`.split($\)
  s.require_path = "lib"
  s.author = "christian koestlin"
  s.email = "christian.koestlin@gmail.com"
  s.homepage = 'http://marcmo.github.com/cxxproject/'

  s.add_dependency('cxx')
end
