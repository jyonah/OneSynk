class Group < ActiveRecord::Base
  validates :name, presence: :true
  validates :path, presence: :true, uniqueness: :true

  has_many :listings
  has_many :cards, through: :listings
  has_many :users, through: :cards
end
