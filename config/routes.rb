Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "tops#menu"

  get "love/members", to: "loves#members", as: "love_members"
  post "love/create", to: "loves#create", as: "love_create"

  get "me/members", to: "mes#members", as: "me_members"
  post "me/create", to: "mes#create", as: "me_create"

  get "joy/members", to: "joys#members", as: "joy_members"
  post "joy/create", to: "joys#create", as: "joy_create"

  get "love/maika", to: "loves#maika", as: "love_maika"
  get "love/risa", to: "loves#risa", as: "love_risa"
  get "love/sana", to: "loves#sana", as: "love_sana"
  get "love/hitomi", to: "loves#hitomi", as: "love_hitomi"
  get "love/result", to: "loves#result", as: "love_result"
end
