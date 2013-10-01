require 'rspec'
require 'delayed_job'
require 'delayed_job_honeybadger'

# Require files in spec/support/ and its subdirectories.
Dir[File.expand_path('../../spec/support/**/*.rb', __FILE__)].each {|f| require f}

# Use test backend
Delayed::Worker.backend = :test

RSpec.configure do |c|
  c.mock_with :rspec
  c.color_enabled = true
  c.tty = true

  c.treat_symbols_as_metadata_keys_with_true_values = true
  c.filter_run :focus => true
  c.run_all_when_everything_filtered = true
end
