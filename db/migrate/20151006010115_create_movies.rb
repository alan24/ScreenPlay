class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|

    	t.string :movie
    	t.string :actors
    	t.string :director
    	t.text :description

      	t.timestamps
    end
  end
end
