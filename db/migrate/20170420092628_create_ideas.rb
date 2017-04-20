class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
    	t.text :description
    	t.string :author
    	t.timestamps null: false 
      t.timestamps
    end
  end
end
