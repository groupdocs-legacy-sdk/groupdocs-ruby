class SignatureTemplateRecipientsResult
  attr_accessor :template_id, :recipients

  # :internal => :external
  def self.attribute_map
  {
      :template_id => :templateId, :recipients => :recipients

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateRecipientsResult.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateRecipientsResult.attribute_map["recipients".to_sym] != nil
        name = "recipients".to_sym
        value = attributes["recipients"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateRecipientInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureTemplateRecipientsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

