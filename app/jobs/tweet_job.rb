class TweetJob < ApplicationJob
  queue_as :default


  def perform(tweet)
    ## ? First Instance  (on same day)
    # * Initial tweet set at 8am
    # * then I change to 7am
    # * will create and run 2 jobs for single tweet to publish
    # * so 7am job will run first which creates the tweet
    # * 8am job will not be published as the tweet already has the tweet_id set
    return if tweet.published?

    ## ? Second Instance (on same day)
    # * Initial tweet set at 12pm
    # * then I change to 5pm
    # * so 12pm job will not create tweet as its publish time has been set to the future date
    # * hence 5pm job will run as its not published yet and current time has passed or eqaul to the publish time of tweet
    return if tweet.publish_at > Time.current

    tweet.publish!
  end
end
