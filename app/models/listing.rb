class Listing < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  validates_presence_of :transportation_type
  validates_presence_of :cost
  validates_presence_of :location
  validates_presence_of :date_start
  validates_presence_of :date_end
  validates :rating, inclusion: {in: (0..5).to_a}, numericality: {only_integer: true}
  validates_presence_of :description
end
