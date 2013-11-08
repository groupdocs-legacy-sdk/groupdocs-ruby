class WebhookInfo
  attr_accessor :callback_url

  # :internal => :external
  def self.attribute_map
  {
      :callback_url => :callbackUrl

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if WebhookInfo.attribute_map["callback_url".to_sym] != nil
        name = "callback_url".to_sym
        value = attributes["callbackUrl"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    WebhookInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

