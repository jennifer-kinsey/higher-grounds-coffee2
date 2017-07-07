class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price, :decimal, :precision => 8, :scale => 2
      t.string :image
      t.string :origin
      t.string :variety
      
      t.timestamps
    end
  end
end
