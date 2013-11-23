OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['LT_OAUTH_CLIENT_ID'], ENV['LT_OAUTH_CLIENT_SECRET'], scope: "user,repo,gist", redirect_uri: '/auth/github/callback'
end 