require 'ably'

API_KEY = "INSERT-API-KEY-HERE" # Add your API key here
raise "Cannot run without an API key. Add your key to example.rb" if API_KEY.include?('INSERT')

# Instance the Ably library
ably = Ably::Rest.new(key: API_KEY)

puts "Publishing three messages..."
channel = ably.channels.get('persisted:sounds')
channel.publish 'play', 'bark'
channel.publish 'play', 'meow'
channel.publish 'play', 'cluck'
