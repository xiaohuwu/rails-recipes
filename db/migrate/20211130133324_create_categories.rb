class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    add_column :events,:category_id,:integer,null:false
  end

end
