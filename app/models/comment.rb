class Comment < ApplicationRecord
  belongs_to :cinema
  belongs_to :user
end
