class DocumentUserStatusResult
  attr_accessor :doc_info, :owner_id, :user_id, :user_status

  # :internal => :external
  def self.attribute_map
  {
      :doc_info => :doc_info, :owner_id => :owner_id, :user_id => :user_id, :user_status => :user_status

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DocumentUserStatusResult.attribute_map["doc_info".to_sym] != nil
        name = "doc_info".to_sym
        value = attributes["doc_info"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentUserStatusResult.attribute_map["owner_id".to_sym] != nil
        name = "owner_id".to_sym
        value = attributes["owner_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentUserStatusResult.attribute_map["user_id".to_sym] != nil
        name = "user_id".to_sym
        value = attributes["user_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentUserStatusResult.attribute_map["user_status".to_sym] != nil
        name = "user_status".to_sym
        value = attributes["user_status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DocumentUserStatusResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

