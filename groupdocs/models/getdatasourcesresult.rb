class GetDatasourcesResult
  attr_accessor :datasources

  # :internal => :external
  def self.attribute_map
  {
      :datasources => :datasources

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetDatasourcesResult.attribute_map["datasources".to_sym] != nil
        name = "datasources".to_sym
        value = attributes["datasources"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Datasource.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetDatasourcesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

