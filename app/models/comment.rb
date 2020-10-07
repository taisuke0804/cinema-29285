class Comment < ApplicationRecord
  belongs_to :cinema
  belongs_to :user

  validates :content, length: { maximum: 100 }
end
