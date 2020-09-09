class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.tasks.build
      @tasks = current_user.order(id: :desc).page.(params[:page])
    end
  end
end
