class WatchesController < ApplicationController


  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
    @collection_brand = ['Chopard', 'Bulgari','IWC', 'Audemars Piguet',  "Bell & Ross"]
    @collection_gender = ['Homme', 'Femme','Unisex']
    @collection_color = ['Or', 'Argent', 'Bronze', 'Blanc', 'Noir', 'Marron', 'Bleu', 'Vert', 'Rouge', 'Orange', 'Jaune', 'Beige', 'Gris']
    @collection_mechanism = ['Automatique (Mécanique)','Energie Solaire','Kinetic','Quartz (Pile)']
    @collection_case_material = ['Autre','Cuir','Métal','Plastique']
    @collection_style = ["Vintage", "Sport", "Cérémonie", "Bohème", "Classique", "Design"]
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    @watch.save!
    redirect_to watch_path(@watch)
  end

  private

  def watch_params
    params.require(:watch).permit(:photo, :production_year, :brand, :model, :price_per_day, :gender, :description, :color, :mechanism, :case_material, :style)
  end

end
