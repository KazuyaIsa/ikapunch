class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.string :point_name
      t.string :image_id
      t.text :caption
      t.integer :user_id
      t.text :weight
      t.text :lenght
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
