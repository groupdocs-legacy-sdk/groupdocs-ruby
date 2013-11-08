class Range
  attr_accessor :position, :length

  # :internal => :external
  def self.attribute_map
  {
      :position => :position, :length => :length

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Range.attribute_map["position".to_sym] != nil
        name = "position".to_sym
        value = attributes["position"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Range.attribute_map["length".to_sym] != nil
        name = "length".to_sym
        value = attributes["length"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Range.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

