class Movie < ActiveRecord::Base
#CREATE
    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.find(1)
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(att)
        self.find_by(att)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

#UPDATE
    def update_with_attributes(attributes)
        self.attributes = attributes
        self.save
    end

    def self.update_all_titles(title)
        self.update(:title => title)
    end
    
#DELETE
    def self.delete_by_id(id)
        self.find(id).destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end



end