Gem::Specification.new do |s|
  s.name          = 'delayed_job_honeybadger'
  s.version       = '0.0.1'
  s.date          = '2013-07-22'

  s.summary       = "Honeybadger plugin for Delayed Job"
  s.description   = "Notifies Honeybadger of errors in Delayed Job workers."

  s.authors       = ["Joshua Wood"]
  s.email         = 'josh@honeybadger.io'
  s.homepage      = 'https://github.com/honeybadger-io/delayed_job_honeybadger'

  s.require_paths = %w[lib]

  s.add_dependency('honeybadger')
  s.add_dependency('delayed_job')

  s.files = %w[
    delayed_job_honeybadger.gemspec
    LICENSE
    README.md
    lib/delayed_job_honeybadger.rb
    lib/delayed/plugins/honeybadger.rb
  ]
end
