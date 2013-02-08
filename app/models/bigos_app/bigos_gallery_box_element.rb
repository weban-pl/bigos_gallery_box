module BigosApp
  class BigosGalleryBoxElement < PageElement
    has_one :gallery, :dependent => :destroy
    has_many :gallery_images, :through => :gallery
    after_save :add_gallery
    attr_accessible :is_admin_visible, :name, :type, :page_id, :position, :gallery_attributes
    accepts_nested_attributes_for :gallery

    scope :is_background, lambda{ where(is_background: true) }

    def add_gallery
      self.gallery = BigosGalleryBox::Gallery.create if self.gallery.blank?
    end

    def self.class_name
      "Gallery"
    end

    def name
      self.gallery.title
    end

    def render
      self.gallery.is_background ? "bigos_gallery_box/module/background_item" : "bigos_gallery_box/module/item"
    end

    def admin_render
      "bigos_gallery_box/module/admin/item"
    end
  end
end