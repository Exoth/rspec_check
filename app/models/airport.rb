class Airport
  include ::Mongoid::Document
  belongs_to :city
end