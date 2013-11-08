class Page
  attr_accessor :id, :w, :h

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :w => :w, :h => :h

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Page.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Page.attribute_map["w".to_sym] != nil
        name = "w".to_sym
        value = attributes["w"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Page.attribute_map["h".to_sym] != nil
        name = "h".to_sym
        value = attributes["h"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Page.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

