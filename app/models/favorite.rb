class Favorite < ApplicationRecord
  belongs_to :user

  validates :profile, length: { maximum: 2000 }
end
