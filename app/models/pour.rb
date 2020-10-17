class Pour < ApplicationRecord
  belongs_to :recipe

  validates :prepared_at, presence: true
  validates :location, presence: true
end
