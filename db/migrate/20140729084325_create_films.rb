class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
    	t.string 	:title
    	t.text 		:plot
    	t.integer 	:year
    	t.string 	:poster

      t.timestamps
    end
  end
end
