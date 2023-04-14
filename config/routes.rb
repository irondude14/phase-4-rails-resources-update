Rails.application.routes.draw do
  resources :birds, only: %i[index show create update]
  patch "/birds/:id/like", to "bird#increment_likes"
end
