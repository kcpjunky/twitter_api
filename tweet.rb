require 'Twitter'

client = Twitter::REST::Client.new do |config|
    config.consumer_key = "YOUR_CONSUMER_KEY"
    config.consumer_secret = "YOUR_CONSUMER_SECRET"
end

client.search("word", result_type: "recent").take(10).each do |tweet|
    puts tweet.text
end

