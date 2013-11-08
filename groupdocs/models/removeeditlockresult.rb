class RemoveEditLockResult
  attr_accessor :doc_version

  # :internal => :external
  def self.attribute_map
  {
      :doc_version => :doc_version

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if RemoveEditLockResult.attribute_map["doc_version".to_sym] != nil
        name = "doc_version".to_sym
        value = attributes["doc_version"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    RemoveEditLockResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

