class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @new_dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @new_dose.cocktail_id = @cocktail.id
    @new_dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
