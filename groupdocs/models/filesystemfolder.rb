class FileSystemFolder
  attr_accessor :folder_count, :file_count, :id, :guid, :name, :access, :owner, :sharers, :dir, :modified_on, :created_on

  # :internal => :external
  def self.attribute_map
  {
      :folder_count => :folder_count, :file_count => :file_count, :id => :id, :guid => :guid, :name => :name, :access => :access, :owner => :owner, :sharers => :sharers, :dir => :dir, :modified_on => :modified_on, :created_on => :created_on

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if FileSystemFolder.attribute_map["folder_count".to_sym] != nil
        name = "folder_count".to_sym
        value = attributes["folder_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["file_count".to_sym] != nil
        name = "file_count".to_sym
        value = attributes["file_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["access".to_sym] != nil
        name = "access".to_sym
        value = attributes["access"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["owner".to_sym] != nil
        name = "owner".to_sym
        value = attributes["owner"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["sharers".to_sym] != nil
        name = "sharers".to_sym
        value = attributes["sharers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push UserInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if FileSystemFolder.attribute_map["dir".to_sym] != nil
        name = "dir".to_sym
        value = attributes["dir"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["modified_on".to_sym] != nil
        name = "modified_on".to_sym
        value = attributes["modified_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemFolder.attribute_map["created_on".to_sym] != nil
        name = "created_on".to_sym
        value = attributes["created_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    FileSystemFolder.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

