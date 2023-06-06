class List < ApplicationRecord
  belongs_to :bookmark, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
