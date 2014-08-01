class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :film_id
    	t.text :description
    	t.string :reviewer
      	t.timestamps
    end
  end
end
