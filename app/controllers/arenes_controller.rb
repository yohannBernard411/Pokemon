class ArenesController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    @arene = Arene.new
  end

  def create
    @arene = Arene.new(params_arene)
    @arene.dispo = "libre"
    @arene.save!
    redirect_to root_path
  end

  def show
    @arene = Arene.find(params[:id])
    if @arene.joueur1_id != nil
      @arene.joueur2_id = current_user.id
      @arene.dispo = "plein"
    else
      @arene.joueur1_id = current_user.id
    end
    @arene.save!
  end

  private

  def params_arene
    params.require(:arene).permit(:name)
  end

end