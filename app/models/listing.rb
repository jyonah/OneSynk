class Listing < ActiveRecord::Base
  validates :card_id, presence: :true
  validates :group_id, presence: :true

  belongs_to :card
  belongs_to :group
  has_one :user, through: :card
end
