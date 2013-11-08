class GetCollaboratorsResult
  attr_accessor :document_guid, :session_guid, :owner, :collaborators, :shared_link_access_rights

  # :internal => :external
  def self.attribute_map
  {
      :document_guid => :documentGuid, :session_guid => :sessionGuid, :owner => :owner, :collaborators => :collaborators, :shared_link_access_rights => :shared_link_access_rights

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetCollaboratorsResult.attribute_map["document_guid".to_sym] != nil
        name = "document_guid".to_sym
        value = attributes["documentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetCollaboratorsResult.attribute_map["session_guid".to_sym] != nil
        name = "session_guid".to_sym
        value = attributes["sessionGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetCollaboratorsResult.attribute_map["owner".to_sym] != nil
        name = "owner".to_sym
        value = attributes["owner"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetCollaboratorsResult.attribute_map["collaborators".to_sym] != nil
        name = "collaborators".to_sym
        value = attributes["collaborators"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ReviewerInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if GetCollaboratorsResult.attribute_map["shared_link_access_rights".to_sym] != nil
        name = "shared_link_access_rights".to_sym
        value = attributes["shared_link_access_rights"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetCollaboratorsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

