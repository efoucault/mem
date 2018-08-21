class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create
  def home
  end
end
