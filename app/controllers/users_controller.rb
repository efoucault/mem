class UsersController < ApplicationController
  def index
    @users = User.all
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to edit_user_path, notice: 'Profil was successfully updated.'
      else
       render :edit
      end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :last_name, :address, :description)
  end
end
