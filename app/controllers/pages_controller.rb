class PagesController < ApplicationController
  def index
  end

  def profile
  	# grab the username from the URL and call it :id

  	if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      # redirect to 404 (root for now)
      redirect_to root_path, :notice=> "User not found!"
    end



  end

  def home
  end

  def explore
  end
end
