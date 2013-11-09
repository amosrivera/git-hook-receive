class Hook < Sinatra::Base
	require 'json'

	post '/' do
		commit = JSON.parse(request.body.read)
		
		# save to log
		log = File.open("/sites/git-hook-receive/commits.log","a")
		log.write commit['user']
		log.write "\n"
		log.close

		200
	end
end
