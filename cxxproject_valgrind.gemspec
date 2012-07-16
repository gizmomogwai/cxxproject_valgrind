PKG_VERSION = "1.0.7"

spec = Gem::Specification.new do |s|
  s.name = "cxxproject_valgrind"
  s.version = PKG_VERSION
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
