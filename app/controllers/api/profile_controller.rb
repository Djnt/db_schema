class Api::ProfileController < ApplicationController
    before_action :authenticate_user!
    
    def show
      respond_to :html, :json
      user = User.find(params[:id])
      # add scopes
      followers = User.where("id IN (SELECT user_id from follows where follows.target = #{user.id})")
      follows = User.where("id IN (SELECT target from follows where follows.user_id = #{user.id})")
      tweats = user.tweats
      render json: {email: user.email, followers: followers, follows: follows, tweats: user.tweats}
    end

    #TEST1
    def
      qqqqqsssssssssssqweeqweqweqwe = 2
      asssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssddddddddddddddxxxxxxxxxxxxx = 4324234234234
    end

    #TEST2
    def show
      respond_to :html, :json
      user = User.find(params[:id])
      # add scopes
      followers = User.where("id IN (SELECT user_id from follows where follows.target = #{user.id})")
      follows = User.where("id IN (SELECT target from follows where follows.user_id = #{user.id})")
      tweats = user.tweats
      render json: {email: user.email, followers: followers, follows: follows, tweats: user.tweats}
    end

        #TEST2
        def show
          respond_to :html, :json
          user = User.find(params[:id])
          # add scopes
          followers = User.where("id IN (SELECT user_id from follows where follows.target = #{user.id})")
          follows = User.where("id IN (SELECT target from follows where follows.user_id = #{user.id})")
          tweats = user.tweats
          render json: {email: user.email, followers: followers, follows: follows, tweats: user.tweats}
        end

    #TEST3
    def show
      respond_to :html, :json
      user = User.find(params[:id])
      # add scopes
      followers = User.where("id IN (SELECT user_id from follows where follows.target = #{user.id})")
      follows = User.where("id IN (SELECT target from follows where follows.user_id = #{user.id})")
      tweats = user.tweats
      render json: {email: user.email, followers: followers, follows: follows, tweats: user.tweats}
    end
  
end
  