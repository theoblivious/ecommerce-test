class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :item_id
      t.string :item_image

      t.timestamps null: false
    end
  end
end
