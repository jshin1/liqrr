class User < ApplicationRecord
  has_many :favorites
  has_many :recipes, through: :favorites

  def full_name
    self.first_name + " " + self.last_name
  end
end
