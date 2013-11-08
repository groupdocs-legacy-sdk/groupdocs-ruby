class SignatureFormsResult
  attr_accessor :count, :forms

  # :internal => :external
  def self.attribute_map
  {
      :count => :count, :forms => :forms

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormsResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormsResult.attribute_map["forms".to_sym] != nil
        name = "forms".to_sym
        value = attributes["forms"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureFormInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureFormsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

