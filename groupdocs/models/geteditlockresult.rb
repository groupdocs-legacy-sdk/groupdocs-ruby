class GetEditLockResult
  attr_accessor :doc_guid, :file_id, :edit_url

  # :internal => :external
  def self.attribute_map
  {
      :doc_guid => :doc_guid, :file_id => :file_id, :edit_url => :edit_url

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetEditLockResult.attribute_map["doc_guid".to_sym] != nil
        name = "doc_guid".to_sym
        value = attributes["doc_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetEditLockResult.attribute_map["file_id".to_sym] != nil
        name = "file_id".to_sym
        value = attributes["file_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetEditLockResult.attribute_map["edit_url".to_sym] != nil
        name = "edit_url".to_sym
        value = attributes["edit_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetEditLockResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

