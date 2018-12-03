class User < ApplicationRecord
  has_many :favorites
  has_many :recipes, through: :favorites
  validates :username, uniqueness: true
  validates :first_name, :last_name, presence: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
