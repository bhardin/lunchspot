require "redis"
require "resque"
require "resque-loner"

# Recommendable requires a connection to a running redis-server. Either create
# a new instance based on a host/port or UNIX socket, or pass in an existing
# Redis client instance.
uri = URI.parse(ENV["REDIS_URL"])
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
Recommendable.redis = REDIS

# Sidekiq also needs a connection to Redis. If you are currently initializing
# Sidekiq somewhere else or Redis is running on localhost:6379, you can leave
# this commented out.
# Sidekiq.configure_server do |config|
#   config.redis = { :url => '<%= redis_host %>:<%= redis_port %>' }
# end

# Tell Redis which database to use (usually between 0 and 15). The default of 0
# is most likely okay unless you have another application using that database.
Recommendable.redis.select "5"