class TweetsController < ApplicationController
    before_action :require_user_to_be_logged_in!

    def index
        @tweets = Current.user.tweets
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Current.user.tweets.new(tweets_param)
        if @tweet.save
            redirect_to tweets_path, notice: "Tweets was scheduled successfully"
        else
            render :new
        end
    end

    private

    def tweets_param
        params.require(:tweet).permit(:twitter_account_id, :body, :publish_at)
    end
end