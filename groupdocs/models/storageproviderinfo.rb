class StorageProviderInfo
  attr_accessor :id, :provider, :type, :token, :public_key, :private_key, :root_folder, :is_primary, :service_host, :sync_options

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :provider => :provider, :type => :type, :token => :token, :public_key => :publicKey, :private_key => :privateKey, :root_folder => :rootFolder, :is_primary => :isPrimary, :service_host => :serviceHost, :sync_options => :syncOptions

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if StorageProviderInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["provider".to_sym] != nil
        name = "provider".to_sym
        value = attributes["provider"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["token".to_sym] != nil
        name = "token".to_sym
        value = attributes["token"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if StorageProviderInfo.attribute_map["public_key".to_sym] != nil
        name = "public_key".to_sym
        value = attributes["publicKey"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["private_key".to_sym] != nil
        name = "private_key".to_sym
        value = attributes["privateKey"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["root_folder".to_sym] != nil
        name = "root_folder".to_sym
        value = attributes["rootFolder"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["is_primary".to_sym] != nil
        name = "is_primary".to_sym
        value = attributes["isPrimary"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["service_host".to_sym] != nil
        name = "service_host".to_sym
        value = attributes["serviceHost"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StorageProviderInfo.attribute_map["sync_options".to_sym] != nil
        name = "sync_options".to_sym
        value = attributes["syncOptions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    StorageProviderInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

