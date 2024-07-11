class PagesController < ApplicationController

  def index
    if user_signed_in?
      redirect_to authenticated_path
    end
  end

end
