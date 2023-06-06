class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, :list_id
end
