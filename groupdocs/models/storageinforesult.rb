class StorageInfoResult
  attr_accessor :total_space, :avail_space, :doc_credits, :avail_credits, :total_documents, :avail_documents

  # :internal => :external
  def self.attribute_map
  {
      :total_space => :total_space, :avail_space => :avail_space, :doc_credits => :doc_credits, :avail_credits => :avail_credits, :total_documents => :total_documents, :avail_documents => :avail_documents

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if StorageInfoResult.attribute_map["total_space".to_sym] != nil
        name = "total_space".to_sym
        value = attributes["total_space"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageInfoResult.attribute_map["avail_space".to_sym] != nil
        name = "avail_space".to_sym
        value = attributes["avail_space"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageInfoResult.attribute_map["doc_credits".to_sym] != nil
        name = "doc_credits".to_sym
        value = attributes["doc_credits"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageInfoResult.attribute_map["avail_credits".to_sym] != nil
        name = "avail_credits".to_sym
        value = attributes["avail_credits"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageInfoResult.attribute_map["total_documents".to_sym] != nil
        name = "total_documents".to_sym
        value = attributes["total_documents"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageInfoResult.attribute_map["avail_documents".to_sym] != nil
        name = "avail_documents".to_sym
        value = attributes["avail_documents"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    StorageInfoResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

