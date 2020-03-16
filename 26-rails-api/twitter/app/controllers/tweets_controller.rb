class TweetsController < ApplicationController

    def create
        tweet = Tweet.create(tweet_params)

        render json: tweet, include: [:user]
    end

    private

    def tweet_params
        params.require(:tweet).permit(:user_id, :content)
    end
end
