class WatchesController < ApplicationController

  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
  end

end
