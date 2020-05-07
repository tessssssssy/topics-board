class VotesController < ApplicationController
    def create
        if current_user.votes.find_by(topic_id: params[:topic_id]) == nil
            @vote = Vote.new
            @vote.user_id = current_user.id
            @vote.topic_id = params[:topic_id]            
            if @vote.save
              redirect_to root_path
            end
        end
    end
end


