OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '511783098194-45fnhec8iv6s8a0e1ur0vbnaipd0ng61.apps.googleusercontent.com', 'rn6H-6Qtf9PNwhh2f9KKTwmR', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
