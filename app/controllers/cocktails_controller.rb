class CocktailsController < ApplicationController
  def index
    @cocktail = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @new_cocktail = Cocktail.create!(name: params[:cocktail][:name])
  end
end
