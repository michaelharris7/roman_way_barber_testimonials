Rails.application.routes.draw do
  resources :featured_testimonials
  resources :testimonials
  resources :testimonial_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
