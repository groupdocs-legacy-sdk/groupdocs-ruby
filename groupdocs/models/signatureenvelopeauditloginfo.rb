class SignatureEnvelopeAuditLogInfo
  attr_accessor :id, :type, :date, :user_name, :action, :remote_address, :details

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :type => :type, :date => :date, :user_name => :userName, :action => :action, :remote_address => :remoteAddress, :details => :details

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeAuditLogInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogInfo.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogInfo.attribute_map["date".to_sym] != nil
        name = "date".to_sym
        value = attributes["date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogInfo.attribute_map["user_name".to_sym] != nil
        name = "user_name".to_sym
        value = attributes["userName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogInfo.attribute_map["action".to_sym] != nil
        name = "action".to_sym
        value = attributes["action"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogInfo.attribute_map["remote_address".to_sym] != nil
        name = "remote_address".to_sym
        value = attributes["remoteAddress"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogInfo.attribute_map["details".to_sym] != nil
        name = "details".to_sym
        value = attributes["details"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeAuditLogInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

