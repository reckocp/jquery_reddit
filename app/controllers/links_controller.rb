class LinksController < ApplicationController
  def index
    @links = Link.all.sort_by { |l| [l.scores, l.title] }.reverse!
  end

  def show
   link = Link.find(params[:id])
   if link
      @link = link
    else
      render_not_found
    end
  end

  def create

    Link.create(user_id: params[:link][:user_id],
               title: params[:link][:title],
               body:params[:link][:body])

     redirect_to '/links'
   end
end
