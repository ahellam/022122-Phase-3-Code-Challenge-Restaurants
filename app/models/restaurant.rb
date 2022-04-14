class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def self.fanciest
        self.all.order(:price).last
    end

    def all_reviews
        review_arr = []
        self.reviews.each do |review|
           review_arr << review.full_review
        end
        review_arr
    end
end