class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, length: {is: 4}
  validates :plot, length: { minimum: 10 }
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    all = []
    genres.each do |genre|
      all << genre[:name]
    end
    return all
    # movie.genres.each do |genre|
    #   genres << genre[:name] 
    # end
   
  end
end
