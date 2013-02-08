BigosGalleryBox::Engine.routes.draw do

  namespace :admin do
    resources :gallery_images
  end

end
