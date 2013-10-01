guard :rspec, cli: '--format Fuubar --fail-fast', all_after_pass: false, all_on_start: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/delayed_job_honeybadger_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
