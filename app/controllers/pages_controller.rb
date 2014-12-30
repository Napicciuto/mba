class PagesController < ApplicationController

  def home
    @blog = Blog.all.reverse
    @twitter = twitter_client.home_timeline
  end

  private

  def twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "FnKlFSULPMiBLHFt6H5qcTHwF"
      config.consumer_secret     = "iNkumZzVXw8mmj4xX5V1efGBKySH6C6zUpJZUAbynaXR7CGq5U"
      config.access_token        = "2835381009-fWnGjt7iH0oQiR8XYobdVCxtAEGehTqN3FZUfVG"
      config.access_token_secret = "CNO4k43ovGyLW2gbP961YYHGm1pCPn6NJBEAIRpmRGp9C"
    end
  end
end