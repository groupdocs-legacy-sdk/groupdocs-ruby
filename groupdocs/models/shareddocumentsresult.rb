class SharedDocumentsResult
  attr_accessor :count, :documents

  # :internal => :external
  def self.attribute_map
  {
      :count => :count, :documents => :documents

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SharedDocumentsResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SharedDocumentsResult.attribute_map["documents".to_sym] != nil
        name = "documents".to_sym
        value = attributes["documents"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SharedDocumentInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SharedDocumentsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

