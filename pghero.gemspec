require_relative "lib/pghero/version"

Gem::Specification.new do |spec|
  spec.name          = "pghero_fork"
  spec.version       = PgHero::VERSION
  spec.summary       = "A performance dashboard for Postgres forked for compatibility woth api_only apps"
  spec.homepage      = "https://github.com/Arkweid/pgheroo"
  spec.license       = "MIT"

  spec.author        = "Aleksandr Abroskin"
  spec.email         = "a.a.abroskin@yandex.ru"

  spec.files         = Dir["*.{md,txt}", "{app,config,lib,licenses}/**/*"]
  spec.require_path  = "lib"

  spec.required_ruby_version = ">= 2.4"

  spec.add_dependency "activerecord", ">= 5"
end
