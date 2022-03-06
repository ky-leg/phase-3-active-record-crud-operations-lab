class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.all[0]
    end

    def self.last_movie
        self.all[-1]
    end

    def self.movie_count
        self.all.length
    end

    def self.find_movie_with_id(id)
        Movie.where(id: id)[0]
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(update)
        # puts value
        self.update(update)
    end 

    def self.update_all_titles(title)
        Movie.update(:all, title: title)
    end

    def self.delete_by_id(id)
        self.destroy_by(id: id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end