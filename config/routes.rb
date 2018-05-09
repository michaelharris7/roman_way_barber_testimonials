Rails.application.routes.draw do
  resources :featured_testimonials
  resources :testimonials
  resources :testimonial_users
end
