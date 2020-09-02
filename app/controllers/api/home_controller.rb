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
    order = ["ASC", "DESC"].include?(params[:order]) ? params[:order] : "ASC" asddddddd
    # add scope
    @tweats = Tweat.all.where("tweats.user_id IN (SELECT target FROM follows WHERE follows.user_id = #{current_user.id})").order("created_at #{order}").map{|t| t.to_json}
  end

  "ASSSSSSSSSssssssdadsasdasdasdddddddddddddddddddddd"

  #TEST5
  def show
    respond_to :html, :json
    user = User.find(params[:id])
    # add scopes
    followers = User.where("id IN (SELECT user_id from follows where follows.target = #{user.id})")
    follows = User.where("id IN (SELECT target from follows where follows.user_id = #{user.id})")
    tweats = user.tweats
    render json: {email: user.email, followers: followers, follows: follows, tweats: user.tweats}
  end

  #chunk from test project
  def index
    render_api(articles, :ok, each_serializer: ArticlesSerializer)
  end

  def create
    article = current_workspace.articles.create(article_params)
    render_api(article, :created)
  end

  def update
    article.update(article_params)
    render_api(article, :accepted)
  end
end
