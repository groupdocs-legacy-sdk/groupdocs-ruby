class SubscriptionPlanUsageInfo
  attr_accessor :users, :document_count, :viewer, :signature, :assembly, :comparison, :conversion, :sharing, :api, :branding, :max_document_size, :annotation, :storage_space, :document_tokens, :watermarking, :storage_providers, :private_storage, :embeddings

  # :internal => :external
  def self.attribute_map
  {
      :users => :users, :document_count => :document_count, :viewer => :viewer, :signature => :signature, :assembly => :assembly, :comparison => :comparison, :conversion => :conversion, :sharing => :sharing, :api => :api, :branding => :branding, :max_document_size => :max_document_size, :annotation => :annotation, :storage_space => :storage_space, :document_tokens => :document_tokens, :watermarking => :watermarking, :storage_providers => :storage_providers, :private_storage => :private_storage, :embeddings => :embeddings

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionPlanUsageInfo.attribute_map["users".to_sym] != nil
        name = "users".to_sym
        value = attributes["users"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["document_count".to_sym] != nil
        name = "document_count".to_sym
        value = attributes["document_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["viewer".to_sym] != nil
        name = "viewer".to_sym
        value = attributes["viewer"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["signature".to_sym] != nil
        name = "signature".to_sym
        value = attributes["signature"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["assembly".to_sym] != nil
        name = "assembly".to_sym
        value = attributes["assembly"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["comparison".to_sym] != nil
        name = "comparison".to_sym
        value = attributes["comparison"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["conversion".to_sym] != nil
        name = "conversion".to_sym
        value = attributes["conversion"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["sharing".to_sym] != nil
        name = "sharing".to_sym
        value = attributes["sharing"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["api".to_sym] != nil
        name = "api".to_sym
        value = attributes["api"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["branding".to_sym] != nil
        name = "branding".to_sym
        value = attributes["branding"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["max_document_size".to_sym] != nil
        name = "max_document_size".to_sym
        value = attributes["max_document_size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["annotation".to_sym] != nil
        name = "annotation".to_sym
        value = attributes["annotation"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["storage_space".to_sym] != nil
        name = "storage_space".to_sym
        value = attributes["storage_space"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["document_tokens".to_sym] != nil
        name = "document_tokens".to_sym
        value = attributes["document_tokens"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["watermarking".to_sym] != nil
        name = "watermarking".to_sym
        value = attributes["watermarking"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["storage_providers".to_sym] != nil
        name = "storage_providers".to_sym
        value = attributes["storage_providers"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["private_storage".to_sym] != nil
        name = "private_storage".to_sym
        value = attributes["private_storage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanUsageInfo.attribute_map["embeddings".to_sym] != nil
        name = "embeddings".to_sym
        value = attributes["embeddings"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SubscriptionPlanUsageInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

