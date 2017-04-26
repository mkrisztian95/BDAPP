Rails.application.routes.draw do

  get "ittameglepid" => 'posts#read' 

  get "lepdmegRitat" => 'create#createPost'

  post "/bestWishesForRita" => "create#savePost", :as => :create_post
  get "/bestWishesForRita" => "create#savePost" #, :as => :create_post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
