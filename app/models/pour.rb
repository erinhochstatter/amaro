class Pour < ApplicationRecord
  belongs_to :recipe
  has_many_attached :photos

  validates :prepared_at, presence: true
  validates :location, presence: true
end
