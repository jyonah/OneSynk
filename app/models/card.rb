class Card < ActiveRecord::Base
  validate :at_least_phone_or_email
  validates :default, presence: :true
  validates :name, presence: :true

  belongs_to :user
  has_many :listings

  def at_least_phone_or_email
    if [self.email, self.phone].reject(&:blank?).size == 0
      errors[:base] << ("Please include at least one method of contact.")
    end
  end

end
