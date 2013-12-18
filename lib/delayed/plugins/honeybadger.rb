module Delayed
  module Plugins
    class Honeybadger < Plugin
      module Notify
        def error(job, error)
          ::Honeybadger.notify_or_ignore(
            :error_class   => error.class.name,
            :error_message => "#{ error.class.name }: #{ error.message }",
            :backtrace => error.backtrace,
            :context       => {
              :job_id => job.id,
              :handler => job.handler,
              :last_error => job.last_error,
              :attempts => job.attempts,
              :queue => job.queue
            }
          )
          super if defined?(super)
        end
      end

      callbacks do |lifecycle|
        lifecycle.before(:invoke_job) do |job|
          payload = job.payload_object
          payload = payload.object if payload.is_a? Delayed::PerformableMethod
          payload.extend Notify
        end

        lifecycle.around(:perform) do |worker, &block|
          begin
            block.call(worker)
          ensure
            ::Honeybadger.context.clear!
          end
        end
      end
    end
  end
end
