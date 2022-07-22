# ? this will connect our OmniAuth gem to the twitter with its credentials provided
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, Rails.application.credentials.dig(:twitter, :api_key), Rails.application.credentials.dig(:twitter, :api_secret_key)
end