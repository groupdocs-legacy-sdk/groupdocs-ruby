class CreateFolderResult
  attr_accessor :id, :path

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :path => :path

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CreateFolderResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateFolderResult.attribute_map["path".to_sym] != nil
        name = "path".to_sym
        value = attributes["path"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CreateFolderResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

