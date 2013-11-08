class GetDocumentInfoResult
  attr_accessor :page_count, :views_count, :last_view, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :page_count => :page_count, :views_count => :views_count, :last_view => :last_view, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetDocumentInfoResult.attribute_map["page_count".to_sym] != nil
        name = "page_count".to_sym
        value = attributes["page_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetDocumentInfoResult.attribute_map["views_count".to_sym] != nil
        name = "views_count".to_sym
        value = attributes["views_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetDocumentInfoResult.attribute_map["last_view".to_sym] != nil
        name = "last_view".to_sym
        value = attributes["last_view"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetDocumentInfoResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetDocumentInfoResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetDocumentInfoResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

