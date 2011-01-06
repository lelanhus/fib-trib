# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fib_trib/version"

Gem::Specification.new do |s|
  s.name        = "fib_trib"
  s.version     = FibTrib::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Leland Husband"]
  s.email       = ["leland.husband@gmail.com"]
  s.homepage    = "http://github.com/lelanhus/fib-trib"
  s.summary     = %q{A limited set sum engine}
  s.description = %q{Sums array contents in moving groups with the assumption that fibonacci is the base.}

  s.rubyforge_project = "fib_trib"

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {spec/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec"
end
