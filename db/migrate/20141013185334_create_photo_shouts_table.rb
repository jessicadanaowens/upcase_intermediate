class CreatePhotoShoutsTable < ActiveRecord::Migration
  def up
    create_table :photo_shouts do |t|
      t.attachment :image
    end
  end
end
