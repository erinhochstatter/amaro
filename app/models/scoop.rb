class Scoop < ApplicationRecord
  belongs_to :recipe
  has_many_attached :photos

  validates :prepared_at, presence: true
end
