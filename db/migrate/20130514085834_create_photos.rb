class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.string :remote_image_url

      t.references :post

      t.timestamps
      end
    add_index :photos, :post_id
  end
end
