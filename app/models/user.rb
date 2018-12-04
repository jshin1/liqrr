class User < ApplicationRecord
  has_many :favorites
  has_many :recipes, through: :favorites
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
  validate :age
  validates :username, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates_confirmation_of :password

  def full_name
    self.first_name + " " + self.last_name
  end

  def age
    now = Time.now.utc.to_date
    # now.year - self.birthdate.year - ((now.month > self.birthdate.month || (now.month == self.birthdate.month && now.day >= self.birthdate.day)) ? 0 : 1)
  end

  def over_21
    if self.age < 21
      errors.add(:birthdate, "Users must be 21 years of age or older to create an account")
    end
  end
end
