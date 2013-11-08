class GetPlanResult
  attr_accessor :ref_id, :name

  # :internal => :external
  def self.attribute_map
  {
      :ref_id => :ref_id, :name => :name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetPlanResult.attribute_map["ref_id".to_sym] != nil
        name = "ref_id".to_sym
        value = attributes["ref_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetPlanResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetPlanResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

