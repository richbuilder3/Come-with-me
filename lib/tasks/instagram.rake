


task :get_picture => :environment do

	Instagram.configure do |config|
		config.client_id = "17cf8a9fdf314d96bad0deccc7cc6586"
		config.client_secret = "a5e797ee49a544c28cecf31b63669440"
	end

 	puts 'Instagram Task'

	
	Instagram.tag_recent_media('happy', {count: 1})
	
end
 #do I need httparty
