class FolderMoveResult
  attr_accessor :from_path, :to_path

  # :internal => :external
  def self.attribute_map
  {
      :from_path => :from_path, :to_path => :to_path

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if FolderMoveResult.attribute_map["from_path".to_sym] != nil
        name = "from_path".to_sym
        value = attributes["from_path"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FolderMoveResult.attribute_map["to_path".to_sym] != nil
        name = "to_path".to_sym
        value = attributes["to_path"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    FolderMoveResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

