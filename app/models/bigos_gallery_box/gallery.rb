module BigosGalleryBox
  class Gallery < ActiveRecord::Base
    attr_accessible :bigos_gallery_element_id, :is_background, :title
  end
end
