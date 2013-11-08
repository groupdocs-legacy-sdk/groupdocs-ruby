class ListEntitiesResult
  attr_accessor :path, :count, :folders, :files

  # :internal => :external
  def self.attribute_map
  {
      :path => :path, :count => :count, :folders => :folders, :files => :files

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ListEntitiesResult.attribute_map["path".to_sym] != nil
        name = "path".to_sym
        value = attributes["path"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ListEntitiesResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ListEntitiesResult.attribute_map["folders".to_sym] != nil
        name = "folders".to_sym
        value = attributes["folders"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push FileSystemFolder.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ListEntitiesResult.attribute_map["files".to_sym] != nil
        name = "files".to_sym
        value = attributes["files"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push FileSystemDocument.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    ListEntitiesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

