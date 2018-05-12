# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.use Rack::Cors do
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://romanway-barber-frontend.herokuapp.com', 'http://localhost:4200'

    resource '*',
    :headers => :any,
    # :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
    :methods => [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins '*'  # Never do this on a live site. Only on development mode.

#     resource '*',
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end