class Listing < ActiveRecord::Base
  validates :user_id, presence: :true
  validates :gropu_id, presence: :true

  belongs_to :listing
  belongs_to :group
  belongs_to :user, through: :cards
  has_one :card, source: :user
end
