OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '282978220340-oq6bded2e6m6dqcf73dknv4rh2v0ebp9.apps.googleusercontent.com', 'vyNBMHDA1Bd1N2kom1Yzhsiq', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end