ENV['RAILS_ENV'] ||= 'production'
# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/rails/dispatcher"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/rails/dispatcher/tmp/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/rails/dispatcher/log/unicorn.log"
stdout_path "/home/rails/dispatcher/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.dispatcher.sock"

# Number of processes
worker_processes 4
worker_processes 2

# Time-out
timeout 30

after_fork do |server, worker|
  defined?(ActiveRecord::Base) && ActiveRecord::Base.establish_connection
end
