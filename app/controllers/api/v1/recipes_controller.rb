module Api
    module V1    
        class RecipesController < ApplicationController
            def index
                render json: RecipeSerializer.new(Recipe.all) 
            end

            def show
                recipe = Recipe.find(params[:id])
                render json: recipe
            end

            def create
                recipe = Recipe.new(recipe_params)
                if recipe.save
                    render json: recipe
                end
            end

            def update
                recipe = Recipe.find(params[:id])
                if recipe.update(recipe_params)
                    render json :recipe
                end
            end

            private

            def recipe_params
                params.require(:recipe).permit(:title, :source_name, :source_url, :servings, :calories )
            end
        end
    end
end
