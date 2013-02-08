class CreateBigosGalleryBoxGalleries < ActiveRecord::Migration
  def change
    create_table :bigos_gallery_box_galleries do |t|
      t.integer :bigos_gallery_box_element_id
      t.string :title
      t.boolean :is_background

      t.timestamps
    end
  end
end
