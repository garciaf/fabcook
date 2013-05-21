class CreatePhotoTranslations < ActiveRecord::Migration
  def self.up
    Photo.create_translation_table!({
      :caption => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Photo.drop_translation_table! :migrate_data => true
  end
end
