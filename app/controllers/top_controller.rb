class TopController < ApplicationController
  def main
    render "login"

  end

  def login
    if BCrypt::Password.new(User.find_by(uid: params[:uid]).pass) == params[:pass]
      session[:login_uid] = params[:uid]
      redirect_to tweets_path  # ツイート一覧ページへリダイレクト
    else
     render "login"
    end

  end
  
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end
