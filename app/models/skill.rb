class Skill < ActiveRecord::Base
  has_many :talents
  has_many :users, through: :talents
  validates :name, uniqueness: true
  # Remember to create a migration!
end
