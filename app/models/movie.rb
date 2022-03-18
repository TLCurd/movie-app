class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, length: {is: 4}
  validates :plot, length: { minimum: 10 }
end
