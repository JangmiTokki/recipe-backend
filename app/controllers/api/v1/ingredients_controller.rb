module Api 
    module V1
        class IngredientsController < ApplicationController
            def index
               render json: IngredientSerializer.new(Ingredients.all)
            end

            def show
                ingredient = Ingredient.find(params[:id])
                render json: ingredient
            end

            def create
                ingredient = Ingredient.new(ingredient_params)
                if ingredient.save
                    render json: ingredient
                end
            end

            def update
                ingredient = Ingredient.find(params[:id])
                if ingredient.update(ingredient_params)
                    render json: ingredient
                end
            end

            def destroy
               ingredient = Ingredient.find(params[:id]) 
               ingredient.destroy
            end

            private

            def ingredient_params
                params.require(:ingredient).permit(:name, :measurement, :recipe_id)
            end
        end
    end
end
