require "active_support/dependencies"
require "devise_async/version"

module DeviseAsync
  autoload :Proxy,   "devise_async/proxy"
  autoload :Worker,  "devise_async/worker"
  autoload :Backend, "devise_async/backend"

  module Backend
    autoload :Base,       "devise_async/backend/base"
    autoload :Resque,     "devise_async/backend/resque"
    autoload :Sidekiq,    "devise_async/backend/sidekiq"
    autoload :DelayedJob, "devise_async/backend/delayed_job"
  end

  # Defines the queue backend to be used. Resque by default.
  mattr_accessor :backend
  @@backend = :resque
end
