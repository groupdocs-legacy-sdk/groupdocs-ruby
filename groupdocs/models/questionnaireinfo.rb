class QuestionnaireInfo
  attr_accessor :resolved_executions, :pages, :document_ids, :formats, :id, :guid, :name, :descr, :status, :assigned_questions, :total_questions, :modified, :expires, :folder, :emails, :output_format, :open_on_completion, :allowed_operations

  # :internal => :external
  def self.attribute_map
  {
      :resolved_executions => :resolved_executions, :pages => :pages, :document_ids => :document_ids, :formats => :formats, :id => :id, :guid => :guid, :name => :name, :descr => :descr, :status => :status, :assigned_questions => :assigned_questions, :total_questions => :total_questions, :modified => :modified, :expires => :expires, :folder => :folder, :emails => :emails, :output_format => :output_format, :open_on_completion => :open_on_completion, :allowed_operations => :allowed_operations

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if QuestionnaireInfo.attribute_map["resolved_executions".to_sym] != nil
        name = "resolved_executions".to_sym
        value = attributes["resolved_executions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["pages".to_sym] != nil
        name = "pages".to_sym
        value = attributes["pages"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push QuestionnairePageInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if QuestionnaireInfo.attribute_map["document_ids".to_sym] != nil
        name = "document_ids".to_sym
        value = attributes["document_ids"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if QuestionnaireInfo.attribute_map["formats".to_sym] != nil
        name = "formats".to_sym
        value = attributes["formats"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if QuestionnaireInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["descr".to_sym] != nil
        name = "descr".to_sym
        value = attributes["descr"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["assigned_questions".to_sym] != nil
        name = "assigned_questions".to_sym
        value = attributes["assigned_questions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["total_questions".to_sym] != nil
        name = "total_questions".to_sym
        value = attributes["total_questions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["modified".to_sym] != nil
        name = "modified".to_sym
        value = attributes["modified"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["expires".to_sym] != nil
        name = "expires".to_sym
        value = attributes["expires"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["folder".to_sym] != nil
        name = "folder".to_sym
        value = attributes["folder"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["emails".to_sym] != nil
        name = "emails".to_sym
        value = attributes["emails"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["output_format".to_sym] != nil
        name = "output_format".to_sym
        value = attributes["output_format"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["open_on_completion".to_sym] != nil
        name = "open_on_completion".to_sym
        value = attributes["open_on_completion"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireInfo.attribute_map["allowed_operations".to_sym] != nil
        name = "allowed_operations".to_sym
        value = attributes["allowed_operations"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    QuestionnaireInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

