OmniAuth.config.logger = Rails.logger

#Need to add secret key
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '195968327276430', '6c8fc8d825b0f57aa3772949025719b8'
end
