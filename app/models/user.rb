class User < ActiveRecord::Base

  validates :name, presence: :true
  validates :account_email, presence: :true, uniqueness: :true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Invalid Email address."}

  has_many :cards
  has_many :listings, through: :cards
  has_many :groups, through: :listings

# Getter
  def card
    self.cards.find_by(default: true)
  end

end
