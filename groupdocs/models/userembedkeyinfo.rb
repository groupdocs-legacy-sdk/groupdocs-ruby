class UserEmbedKeyInfo
  attr_accessor :user, :guid, :area, :active, :hit_count

  # :internal => :external
  def self.attribute_map
  {
      :user => :user, :guid => :guid, :area => :area, :active => :active, :hit_count => :hit_count

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UserEmbedKeyInfo.attribute_map["user".to_sym] != nil
        name = "user".to_sym
        value = attributes["user"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserEmbedKeyInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserEmbedKeyInfo.attribute_map["area".to_sym] != nil
        name = "area".to_sym
        value = attributes["area"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserEmbedKeyInfo.attribute_map["active".to_sym] != nil
        name = "active".to_sym
        value = attributes["active"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserEmbedKeyInfo.attribute_map["hit_count".to_sym] != nil
        name = "hit_count".to_sym
        value = attributes["hit_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UserEmbedKeyInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

