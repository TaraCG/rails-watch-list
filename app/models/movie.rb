class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqeness: true
  validates_presence_of :overview
end
