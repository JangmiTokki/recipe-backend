class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  set_type :recipe
  attributes :title, :source_name, :source_url, :servings, :calories
  has_many :ingredients
end
