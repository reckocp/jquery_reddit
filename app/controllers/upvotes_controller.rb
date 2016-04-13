class UpvotesController < ApplicationController
  def index
    @upvotes = Upvote.all
  end

  def create_upvote
   @upvote = Upvote.new
   @upvote.link = Link.find(params[:link_id])
   @upvote.save
   redirect_to :back
  end
end
