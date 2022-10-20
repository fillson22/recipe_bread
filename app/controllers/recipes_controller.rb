class RecipesController < ApplicationController
    
    def index
        @recipe=Recipe.all
    end

    def new
        
    end
    def show
        @recipe=Recipe.find(params[:id])
    end
    def create
        @recipe=Recipe.new(recipe_params)
        @recipe.save
        redirect_to @recipe
    end
    private def recipe_params
        params.require(:recipe).permit(:title, :flour, :malt, :water, :brounextra)
    end
end
