class StepSerializer
  include FastJsonapi::ObjectSerializer
  set_type :recipe
  attributes :description
  belongs_to :recipe
end
