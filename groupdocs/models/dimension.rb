class Dimension
  attr_accessor :width, :height

  # :internal => :external
  def self.attribute_map
  {
      :width => :width, :height => :height

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Dimension.attribute_map["width".to_sym] != nil
        name = "width".to_sym
        value = attributes["width"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Dimension.attribute_map["height".to_sym] != nil
        name = "height".to_sym
        value = attributes["height"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Dimension.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

