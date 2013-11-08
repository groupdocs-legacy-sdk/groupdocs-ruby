class DocumentDownloadInfo
  attr_accessor :url, :file_type, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :url => :url, :file_type => :file_type, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DocumentDownloadInfo.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentDownloadInfo.attribute_map["file_type".to_sym] != nil
        name = "file_type".to_sym
        value = attributes["file_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentDownloadInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentDownloadInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DocumentDownloadInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

