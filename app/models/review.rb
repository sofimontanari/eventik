class Review < ApplicationRecord
  belongs_to :estimation
  validates :rating, inclusion: {in: 0..5}
  validates :comment, :rating, prensence: true
end
