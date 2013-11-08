class GetInvoiceResult
  attr_accessor :invoices

  # :internal => :external
  def self.attribute_map
  {
      :invoices => :invoices

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetInvoiceResult.attribute_map["invoices".to_sym] != nil
        name = "invoices".to_sym
        value = attributes["invoices"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Invoice.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetInvoiceResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

