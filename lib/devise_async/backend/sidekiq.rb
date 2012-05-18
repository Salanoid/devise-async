module DeviseAsync
  module Backend
    class Sidekiq < Base
      include ::Sidekiq::Worker

      sidekiq_options :queue => :mailer

      def self.enqueue(*args)
        perform_async(*args)
      end
    end
  end
end
