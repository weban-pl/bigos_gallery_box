require "bigos_gallery_box/engine"
require "carrierwave"
require "fog"
require "simple_form"
require "cocoon"

module BigosGalleryBox
  module Controllers
    autoload :Helpers, 'bigos_gallery_box/controllers/helpers'
  end

  def self.setup
    include_helpers
    yield self
  end

  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
    end

    ActiveSupport.on_load(:action_view) do
      include BigosGalleryBox::Controllers::Helpers
    end
  end
end
