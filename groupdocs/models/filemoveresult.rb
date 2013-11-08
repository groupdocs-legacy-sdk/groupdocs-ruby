class FileMoveResult
  attr_accessor :src_file, :dst_file

  # :internal => :external
  def self.attribute_map
  {
      :src_file => :src_file, :dst_file => :dst_file

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if FileMoveResult.attribute_map["src_file".to_sym] != nil
        name = "src_file".to_sym
        value = attributes["src_file"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileMoveResult.attribute_map["dst_file".to_sym] != nil
        name = "dst_file".to_sym
        value = attributes["dst_file"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    FileMoveResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

