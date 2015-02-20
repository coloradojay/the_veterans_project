Rails.application.config.middleware.use OmniAuth::Builder do
  provider :idme, ENV["IDME_CLIENT"], ENV["IDME_SECRET"],
  :scope => "military"
end