class User < ActiveRecord::Base

  validates :name, presence: :true
  validates :account_email, presence: :true, uniqueness: :true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Invalid Email address."}

# Getter
  def card
    self.cards.find_by(default: true)
  end

end
