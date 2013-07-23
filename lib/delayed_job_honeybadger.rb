require 'delayed_job'
require 'honeybadger'

require 'delayed/plugins/honeybadger'

Delayed::Worker.plugins << Delayed::Plugins::Honeybadger
