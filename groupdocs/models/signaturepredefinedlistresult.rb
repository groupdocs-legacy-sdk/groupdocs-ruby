class SignaturePredefinedListResult
  attr_accessor :list

  # :internal => :external
  def self.attribute_map
  {
      :list => :list

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignaturePredefinedListResult.attribute_map["list".to_sym] != nil
        name = "list".to_sym
        value = attributes["list"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignaturePredefinedListResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

