class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.belongs_to :restaurant, foreign_key: true
      t.belongs_to :customer, foreign_key: true
    end
  end
end
