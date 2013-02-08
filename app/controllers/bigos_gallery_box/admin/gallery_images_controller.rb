require_dependency "bigos_gallery_box/application_controller"
module BigosGalleryBox

  class Admin::GalleryImagesController < ApplicationController

    def destroy
      @img = BigosGalleryBox::GalleryImage.find(params[:id])
      @img.destroy

      redirect_to request.referer
    end

  end

end
