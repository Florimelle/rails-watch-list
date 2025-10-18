class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  has_many :bookmarks, dependent: :restrict_with_error
end
