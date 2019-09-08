class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  set_type :ingredient
  attributes :name, :measurement
  belongs_to :recipe
end
