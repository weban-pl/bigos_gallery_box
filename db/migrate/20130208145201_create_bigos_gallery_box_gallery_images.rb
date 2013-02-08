class CreateBigosGalleryBoxGalleryImages < ActiveRecord::Migration
  def change
    create_table :bigos_gallery_box_gallery_images do |t|
      t.integer :gallery_id
      t.string :title
      t.string :gref
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
