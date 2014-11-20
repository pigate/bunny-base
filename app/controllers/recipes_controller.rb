class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recipes = Recipe.all
    respond_with(@recipes)
  end

  def show
    respond_with(@recipe)
  end

  def new
    if user_signed_in?
      @recipe = Recipe.new
      respond_with(@recipe)
    else
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def create
    if user_signed_in?
      @recipe = Recipe.new(recipe_params)
      @recipe.save
      respond_with(@recipe)
    else
      redirect_to new_user_session_path    
    end
  end

  def update
    @recipe.update(recipe_params)
    respond_with(@recipe)
  end

  def destroy
    @recipe.destroy
    respond_with(@recipe)
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:intro, :ingredients, :instructions, :author_id)
    end
end
