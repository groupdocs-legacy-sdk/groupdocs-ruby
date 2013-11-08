class SignatureContactIntegrationSettings
  attr_accessor :provider, :refresh_token, :access_token, :access_token_expiration

  # :internal => :external
  def self.attribute_map
  {
      :provider => :provider, :refresh_token => :refreshToken, :access_token => :accessToken, :access_token_expiration => :accessTokenExpiration

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureContactIntegrationSettings.attribute_map["provider".to_sym] != nil
        name = "provider".to_sym
        value = attributes["provider"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactIntegrationSettings.attribute_map["refresh_token".to_sym] != nil
        name = "refresh_token".to_sym
        value = attributes["refreshToken"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactIntegrationSettings.attribute_map["access_token".to_sym] != nil
        name = "access_token".to_sym
        value = attributes["accessToken"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactIntegrationSettings.attribute_map["access_token_expiration".to_sym] != nil
        name = "access_token_expiration".to_sym
        value = attributes["accessTokenExpiration"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureContactIntegrationSettings.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

