# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orlando_tech_meetups/version'

Gem::Specification.new do |spec|
  spec.name          = "orlando_tech_meetups"
  spec.version       = OrlandoTechMeetups::VERSION
  spec.authors       = ["joshnevius"]
  spec.email         = ["joshnevius92@gmail.com"]

  spec.summary       = "Check out all of your favorite tech meetups in Central Florida"
  spec.description   = "This Ruby Gem provides a CLI to learn about the different tech meetup groups in the central FL/Orlando area. After installing gem, just run 'orlando_tech_meetups' to get a list of things going on in the Central Florida area."
  spec.homepage      = "https://github.com/joshnevius/orlando-tech-meetups-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["orlando_tech_meetups"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "nokogiri", "~> 1.6.7.2"

end
