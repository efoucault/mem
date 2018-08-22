class WatchesController < ApplicationController
   skip_before_action :authenticate_user!, only: :index


  def index
    @watches = Watch.all
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
    collection
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    if @watch.save!
      redirect_to watch_path(@watch)
    else
      render 'new'
    end
  end

  def edit
    @watch = Watch.find(params[:id])
    collection
  end

  def update
    @watch = Watch.find(params[:id])
    @watch.update(watch_params)
    redirect_to watches_path
  end

  def destroy
    @watch = Watch.find(params[:id])
    @watch.destroy
    redirect_to watches_path

  end

  private

  def watch_params
    params.require(:watch).permit(:photo, :production_year, :brand, :model, :price_per_day, :gender, :description, :color, :mechanism, :case_material, :style)
  end

  def collection
    @collection_brand = ['Chopard', 'Bulgari','IWC', 'Audemars Piguet',  "Bell & Ross", "Rolex", "Cartier"]
    @collection_gender = ['Homme', 'Femme','Unisex']
    @collection_color = ['Or', 'Argent', 'Bronze', 'Blanc', 'Noir', 'Marron', 'Bleu', 'Vert', 'Rouge', 'Orange', 'Jaune', 'Beige', 'Gris']
    @collection_mechanism = ['Automatique','Solaire','Kinetic','Quartz']
    @collection_case_material = ['Autre','Cuir','Métal','Plastique']
    @collection_style = ["Vintage", "Sport", "Cérémonie", "Bohème", "Classique", "Design"]
  end
end
