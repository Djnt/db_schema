class Api::FollowsController < ApplicationController
    before_action :authenticate_user!
    
    def create
      respond_to :html, :json

      if (!params[:user] || params[:user].to_i == current_user.id) then
        flash[:notice] = "Error"
        redirect_to root_path and return
      end

      if (Follow.where("user_id = #{current_user.id} AND target = #{params[:user].to_i}")) then
        flash[:notice] = "Already following"
        redirect_to root_path and return
      end

      Follow.create(user_id: current_user.id, target: params[:user].to_i)
      flash[:notice] = "Success"
      redirect_to root_path and return
    end
  
end
  