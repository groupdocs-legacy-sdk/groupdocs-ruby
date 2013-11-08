class SignatureTemplateAssignFieldSettingsInfo
  attr_accessor :current_recipient_id, :new_recipient_id

  # :internal => :external
  def self.attribute_map
  {
      :current_recipient_id => :currentRecipientId, :new_recipient_id => :newRecipientId

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateAssignFieldSettingsInfo.attribute_map["current_recipient_id".to_sym] != nil
        name = "current_recipient_id".to_sym
        value = attributes["currentRecipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateAssignFieldSettingsInfo.attribute_map["new_recipient_id".to_sym] != nil
        name = "new_recipient_id".to_sym
        value = attributes["newRecipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateAssignFieldSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

