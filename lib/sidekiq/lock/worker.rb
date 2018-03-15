module Sidekiq
  module Lock
    module Worker
      def self.included(base)
        base.send(:define_method, Sidekiq.lock_method) do
          RequestLocals.fetch(Sidekiq::Lock::THREAD_KEY) { nil }
        end
      end
    end
  end
end
