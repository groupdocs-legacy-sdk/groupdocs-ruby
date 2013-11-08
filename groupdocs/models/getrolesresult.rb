class GetRolesResult
  attr_accessor :roles

  # :internal => :external
  def self.attribute_map
  {
      :roles => :roles

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetRolesResult.attribute_map["roles".to_sym] != nil
        name = "roles".to_sym
        value = attributes["roles"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push RoleInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetRolesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

