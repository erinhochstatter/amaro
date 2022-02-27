class Pour < ApplicationRecord
  belongs_to :recipe
  has_one_attached :image

  validates :prepared_at, presence: true
  validates :location, presence: true
end
