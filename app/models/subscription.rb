class Subscription < ApplicationRecord
  belongs_to :person
  belongs_to :magazine
end
