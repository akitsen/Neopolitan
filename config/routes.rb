Rails.application.routes.draw do
  devise_for :admins
  mount SurveyorGui::Engine => "/surveys_admin", :as => "surveyor_gui"
  mount Surveyor::Engine => "/surveys", :as => "surveyor"
  resources :comments

  devise_for :users
  resources :links do
    member do
      put "like", to:    "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end
  root "links#index"

end
