class Listing < ApplicationRecord
  include PgSearch
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :offers, dependent: :destroy
  validates_presence_of :transportation_type, inclusion: { in: %w(Berline Sport SUV Crossover Coupe Convertible Van Minibus Limousine) }
  validates_presence_of :cost
  validates_presence_of :location
  validates_presence_of :date_start
  validates_presence_of :date_end
  validates :rating, inclusion: {in: (0..5).to_a}, numericality: {only_integer: true}
  validates_presence_of :description

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  pg_search_scope :search_by_location,
    against: [ :location ],
    using: {
      tsearch: { prefix: true }
  }
end
