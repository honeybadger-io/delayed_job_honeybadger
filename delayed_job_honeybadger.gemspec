Gem::Specification.new do |s|
  s.name          = 'delayed_job_honeybadger'
  s.version       = '0.0.2'
  s.date          = '2013-10-01'

  s.summary       = "Honeybadger plugin for Delayed Job"
  s.description   = "Notifies Honeybadger of errors in Delayed Job workers."

  s.authors       = ["Joshua Wood"]
  s.email         = 'josh@honeybadger.io'
  s.homepage      = 'https://github.com/honeybadger-io/delayed_job_honeybadger'

  s.require_paths = %w[lib]

  s.add_dependency('honeybadger')
  s.add_dependency('delayed_job')

  s.add_development_dependency('rspec')
  s.add_development_dependency('guard')
  s.add_development_dependency('guard-rspec')
  s.add_development_dependency('fuubar')

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    Guardfile
    LICENSE
    README.md
    Rakefile
    delayed_job_honeybadger.gemspec
    lib/delayed/plugins/honeybadger.rb
    lib/delayed_job_honeybadger.rb
    spec/delayed/backend/test.rb
    spec/delayed/serialization/test.rb
    spec/lib/delayed_job_honeybadger_spec.rb
    spec/spec_helper.rb
    spec/support/cobra_job.rb
  ]
  # = MANIFEST =
end
