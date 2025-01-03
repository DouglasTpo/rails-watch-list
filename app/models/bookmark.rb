class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, presence: true
  validates :comment, length: { minimum: 6 } 
  validates :movie_id, uniqueness: { scope: :list_id, message: "has already been added to this list" }
end
