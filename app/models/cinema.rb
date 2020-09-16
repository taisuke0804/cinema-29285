class Cinema < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :appreciation
  belongs_to_active_hash :spoiler

  validates :genre_id, numericality: { other_than: 1 }
  validates :appreciation_id, numericality: { other_than: 1 }
  validates :spoiler_id, numericality: { other_than: 1 }
end
