class User < ApplicationRecord
  has_many :offers
  has_many :listings
  validates :rating, inclusion: {in: (0..5).to_a}, numericality: {only_integer: true}

  # has_many :listings, through: :offers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
