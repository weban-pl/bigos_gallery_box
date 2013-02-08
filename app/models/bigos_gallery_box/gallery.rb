module BigosGalleryBox
  class Gallery < ActiveRecord::Base
    attr_accessible :bigos_gallery_element_id, :is_background, :title
    has_many :gallery_images, :dependent => :destroy

    accepts_nested_attributes_for :gallery_images
  end
end
