class Offer < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  validates :listing, presence: true
  validates :user, presence: true
end
