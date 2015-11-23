# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ai_games/logger/version'

Gem::Specification.new do |spec|
  spec.name          = 'AIGames::Logger'
  spec.version       = AIGames::Logger::VERSION
  spec.authors       = ['Jan David Nose']
  spec.email         = ['jandavid@awesometechnology.de']

  spec.summary       = "Simple logger for bots in The AI Games' competitions"
  spec.description   = <<-EOF
This gem contains a simple logging facility that can be used in The AI Games'
competitions to log events. It provides several log levels and prints the output
to STDERR, where it is picked up by The AI Games' game engines.
  EOF
  spec.homepage      = 'https://github.com/jdno/ai_games-logger'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rubocop'
end
