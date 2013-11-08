class Point
  attr_accessor :x, :y

  # :internal => :external
  def self.attribute_map
  {
      :x => :x, :y => :y

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Point.attribute_map["x".to_sym] != nil
        name = "x".to_sym
        value = attributes["x"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Point.attribute_map["y".to_sym] != nil
        name = "y".to_sym
        value = attributes["y"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Point.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

