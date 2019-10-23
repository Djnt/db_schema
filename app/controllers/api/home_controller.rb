class Api::HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    respond_to :html, :json
    @users = User.all #filter followed users & add serializer
    order = ["ASC", "DESC"].include?(params[:order]) ? params[:order] : "ASC"
    # add scope
    @tweats = Tweat.all.where("tweats.user_id IN (SELECT target FROM follows WHERE follows.user_id = #{current_user.id})").order("created_at #{order}").map{|t| t.to_json}
  end

  def index
    respond_to :html, :json
    @users = User.all #filter followed users & add serializer
    order = ["ASC", "DESC"].include?(params[:order]) ? params[:order] : "ASC"
    # add scope
    @tweats = Tweat.all.where("tweats.user_id IN (SELECT target FROM follows WHERE follows.user_id = #{current_user.id})").order("created_at #{order}").map{|t| t.to_json}
  end
  def index
    respond_to :html, :json
    @users = User.all #filter followed users & add serializer
    order = ["ASC", "DESC"].include?(params[:order]) ? params[:order] : "ASC"
    # add scope
    @tweats = Tweat.all.where("tweats.user_id IN (SELECT target FROM follows WHERE follows.user_id = #{current_user.id})").order("created_at #{order}").map{|t| t.to_json}
  end

  # sad asdasdasdasdasdasd
  # sad asdasdasdasdasdasd
  # sad asdasdasdasdasdasd
  # sad asdasdasdasdasdasd
  # sad asdasdasdasdasdasd

end
