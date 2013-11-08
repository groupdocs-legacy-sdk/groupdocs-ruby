class ViewDocumentResult
  attr_accessor :name, :version, :page_count, :page_size, :url, :doc_type, :image_urls, :token, :page_html, :page_css, :password, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :version => :version, :page_count => :page_count, :page_size => :page_size, :url => :url, :doc_type => :doc_type, :image_urls => :image_urls, :token => :token, :page_html => :pageHtml, :page_css => :pageCss, :password => :password, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ViewDocumentResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["version".to_sym] != nil
        name = "version".to_sym
        value = attributes["version"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["page_count".to_sym] != nil
        name = "page_count".to_sym
        value = attributes["page_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["page_size".to_sym] != nil
        name = "page_size".to_sym
        value = attributes["page_size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["doc_type".to_sym] != nil
        name = "doc_type".to_sym
        value = attributes["doc_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["image_urls".to_sym] != nil
        name = "image_urls".to_sym
        value = attributes["image_urls"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ViewDocumentResult.attribute_map["token".to_sym] != nil
        name = "token".to_sym
        value = attributes["token"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["page_html".to_sym] != nil
        name = "page_html".to_sym
        value = attributes["pageHtml"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["page_css".to_sym] != nil
        name = "page_css".to_sym
        value = attributes["pageCss"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["password".to_sym] != nil
        name = "password".to_sym
        value = attributes["password"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ViewDocumentResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ViewDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

