@dir = "/sites/git-hook-receive/"

worker_processes 1
working_directory "#{@dir}config"

timeout 30

listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}tmp/logs/unicorn.stderr.log"
stdout_path "#{@dir}tmp/logs/unicorn.stdout.log"
