require 'Twitter'
    client = Twitter::Streaming::Client.new do |config|
    config.consumer_key = "YOUR_CONSUMER_KEY"  
    config.consumer_secret = "YOUR_CONSUMER_SECRET"
    config.access_token = "YOUR_ACCESS_TOKEN"
    config.access_token_secret = "YOUR_ACCESS_TOKEN_SECRET"
    end

    client.sample do |tweet|
        puts tweet.text if tweet.is_a?(Twitter::Tweet)
    end

             
            
