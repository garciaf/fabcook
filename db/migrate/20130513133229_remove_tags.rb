class RemoveTags < ActiveRecord::Migration
  def up
    drop_table :tags
  end

  def down
    create_table :tags do |t|
      t.string :name
      t.references :post
      
      t.timestamps
    end
  end
end