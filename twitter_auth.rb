module TwitterAuth
  MyName = 'highfivebowler'
  ApigeeEnpoint = nil
  def self.use_apigee?
    !ApigeeEnpoint.nil?
  end
  AuthKeys = {
    consumer_key: "key",
    consumer_secret: "secret",
    oauth_token: "token",
    oauth_token_secret: "token_secret"
  }
end