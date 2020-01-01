module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      ENV.fetch(config.consumer_key        = "TWITTER_CONSUMER_KEY")
      ENV.fetch(config.consumer_secret     = "TWITTER_CONSUMER_SECRET")
      ENV.fetch(config.access_token        = "TWITTER_ACCESS_TOKEN")
      ENV.fetch(config.access_token_secret = "TWITTER_ACCESS_SECRET")
    end

    client.search("#rails", result_type:'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end
