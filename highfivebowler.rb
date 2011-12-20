load 'twitter_auth.rb'
require 'tweetbot'

bot = TweetBot.configure do |config|
  config.response_frequency = 100

  config.respond_to_phrase "bowled a strike" do |responses|
    responses << "Way to go! Those pins were definitely trying to dodge but you showed them. High five!"
    responses << "Pesky Pins 0. You X. High five!"
    responses << "Are you on the Professional Bowler's Association? Because you could have fooled me! High five!"
    responses << "Yeah, that strike, it may have sealed the deal with your date. Just sayin. High five!"
    responses << "Is it hot in here or is it just you and your bowling score? I thought so. High five!"
  end

  config.respond_to_phrase "bowled a spare" do |responses|
    responses << "That last pin had it coming. Way to finish the job. High five!"
    responses << "Some say it's the ball. I say it's the bowler, and the bowler came out to finish that frame. High five!"
    responses << "I think that spare deserves a round of drinks. Anything with an umbrella suits me fine. High five!"
    responses << "I like spares, it makes a fun game last just a little bit longer. High five!"
    responses << "Punch the next person who says it should have been a strike in the face. That spare was epic! High five!"
  end

  config.twitter_auth = TwitterAuth::AuthKeys
end

bot.talk