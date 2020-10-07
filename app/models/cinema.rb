class Cinema < ApplicationRecord
  belongs_to :user
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :appreciation
  belongs_to_active_hash :spoiler
  belongs_to_active_hash :watch_time

  validates :genre_id, numericality: { other_than: 1 }
  validates :appreciation_id, numericality: { other_than: 1 }
  validates :spoiler_id, numericality: { other_than: 1 }
  validates :watch_time_id, numericality: { other_than: 1 }

  with_options presence: true do
    validates :title, length: { maximum: 40 }
    validates :review, length: { maximum: 2000 }
    validates :score, numericality: {greater_than: 0, less_than: 100}
  end
end
