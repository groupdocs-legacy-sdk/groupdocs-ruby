class Datasource
  attr_accessor :id, :questionnaire_id, :descr, :fields, :created_on, :modified_on

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :questionnaire_id => :questionnaire_id, :descr => :descr, :fields => :fields, :created_on => :created_on, :modified_on => :modified_on

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Datasource.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Datasource.attribute_map["questionnaire_id".to_sym] != nil
        name = "questionnaire_id".to_sym
        value = attributes["questionnaire_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Datasource.attribute_map["descr".to_sym] != nil
        name = "descr".to_sym
        value = attributes["descr"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Datasource.attribute_map["fields".to_sym] != nil
        name = "fields".to_sym
        value = attributes["fields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push DatasourceField.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Datasource.attribute_map["created_on".to_sym] != nil
        name = "created_on".to_sym
        value = attributes["created_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Datasource.attribute_map["modified_on".to_sym] != nil
        name = "modified_on".to_sym
        value = attributes["modified_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Datasource.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

