class LikesController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    unless tweet.liked?(current_user)
      tweet.like(current_user)
    end
    user = User.find_by(uid: current_user)
    user.like_tweets << tweet
    redirect_to tweets_path
  end
  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.liked?(current_user)
      tweet.like(current_user)
    end
    user = User.find_by(uid: current_user)
    tweet.likes.find_by(user_id: user.id).destroy
    redirect_to tweets_path
  end
end
