class DeleteAccountResult
  attr_accessor :account_id

  # :internal => :external
  def self.attribute_map
  {
      :account_id => :account_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DeleteAccountResult.attribute_map["account_id".to_sym] != nil
        name = "account_id".to_sym
        value = attributes["account_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DeleteAccountResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

