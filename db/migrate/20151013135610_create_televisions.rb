class CreateTelevisions < ActiveRecord::Migration
  def change
    create_table :televisions do |t|

    	t.string :title
    	t.string :actors
    	t.string :genres
    	t.string :channels
    	t.string :description

      	t.timestamps
    end
  end
end
