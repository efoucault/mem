class WatchesController < ApplicationController
   skip_before_action :authenticate_user!, only: :index

  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
  end

end
