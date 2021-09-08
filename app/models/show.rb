class Show < ActiveRecord::Base

    def Show.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        Show.maximum(:rating)
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        Show.minimum(:rating).name
     
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        s = Show.where("rating > ?", 5)
        s.each do |x|
            x.name
        end

    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end