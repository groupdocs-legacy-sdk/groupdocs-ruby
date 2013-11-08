class RoleInfo
  attr_accessor :id, :name

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if RoleInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if RoleInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    RoleInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

