class Accommodation < ApplicationRecord
  # Associations
  belongs_to :accomodation_type
  has_and_belongs_to_many :amenities
end
