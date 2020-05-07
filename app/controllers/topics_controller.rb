class TopicsController < ApplicationController

    before_action :find_topic ,only: [:show, :edit, :update, :destroy] 
    before_action :authenticate_user!, except: [:index]
    load_and_authorize_resource

    def index
      @topics = Topic.all
    end

    def new
      @topic = Topic.new
    end

    def create
      @topic = current_user.topics.create(topic_params)
      # @topic.user = current_user
    
      if @topic.save
        redirect_to topics_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @topic.update(topic_params)
        redirect_to topics_path
      else
        render :edit
      end
    end
    
    def destroy
      @topic.destroy

     redirect_to topics_path
    end

    private

  def topic_params
    params.require(:topic).permit(:title, :description, :image, :fixed, :archived)
  end

  def find_topic
    @topic = Topic.find(params[:id])
  end
end
