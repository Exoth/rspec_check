class City
  include ::Mongoid::Document
  has_many :airports
end