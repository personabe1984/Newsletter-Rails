class Magazine < ApplicationRecord
  has_many :subscriptions
  has_many :people, through: :subscriptions

  validates :name, presence: true  
end
