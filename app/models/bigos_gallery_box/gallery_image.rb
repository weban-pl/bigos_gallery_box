module BigosGalleryBox
  class GalleryImage < ActiveRecord::Base
    attr_accessible :gallery_id, :gref, :image, :position, :title
    mount_uploader :image, GalleryImageUploader
  end
end
