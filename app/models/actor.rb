class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, comparison: { greater_than: 13 }  
  belongs_to :movie

  def movie_plot
    plot = movie.plot 
  end

  def movie_title
    title = movie.title 
  end
end
