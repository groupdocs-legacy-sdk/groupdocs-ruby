require "uri"

class Signature_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._add_signature_template_recipient (user_id,template_guid,nickname,role_guid,order,opts={})
    query_param_keys = [:nickname,:role_guid,:order]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "nickname is required" if nickname.nil?
    raise "role_guid is required" if role_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :nickname => nickname, :role_guid => role_guid, :order => order}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/recipient?nickname={nickname}&amp;role={roleGuid}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateRecipientResponse.new(response)
  end

def self._get_signature_template_recipients (user_id,template_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/recipients".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateRecipientsResponse.new(response)
  end

def self._delete_signature_template_recipient (user_id,template_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/recipients/{recipientGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._modify_signature_template_recipient (user_id,template_guid,recipient_guid,nickname,role_guid,order,opts={})
    query_param_keys = [:nickname,:role_guid,:order]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "nickname is required" if nickname.nil?
    raise "role_guid is required" if role_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :recipient_guid => recipient_guid, :nickname => nickname, :role_guid => role_guid, :order => order}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/recipient/{recipientGuid}?nickname={nickname}&amp;role={roleGuid}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateRecipientResponse.new(response)
  end

def self._add_signature_template_document (user_id,template_guid,document_guid,order,parse_fields,opts={})
    query_param_keys = [:order,:parse_fields]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :order => order, :parse_fields => parse_fields}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/document/{documentGuid}?parseFields={parseFields}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateDocumentResponse.new(response)
  end

def self._get_signature_template_documents (user_id,template_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/documents".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateDocumentsResponse.new(response)
  end

def self._delete_signature_template_document (user_id,template_guid,document_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/documents/{documentGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._add_signature_template_field (user_id,template_guid,document_guid,recipient_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :recipient_guid => recipient_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/documents/{documentGuid}/recipient/{recipientGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateFieldResponse.new(response)
  end

def self._assign_signature_template_field (user_id,template_guid,document_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/documents/{documentGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateFieldResponse.new(response)
  end

def self._modify_signature_template_field (user_id,template_guid,document_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/documents/{documentGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateFieldResponse.new(response)
  end

def self._delete_signature_template_field_location (user_id,template_guid,field_guid,location_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "location_guid is required" if location_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :field_guid => field_guid, :location_guid => location_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/fields/{fieldGuid}/locations/{locationGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'locationGuid' + '}', escapeString(location_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._modify_signature_template_field_location (user_id,template_guid,document_guid,recipient_guid,field_guid,location_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "location_guid is required" if location_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :recipient_guid => recipient_guid, :field_guid => field_guid, :location_guid => location_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/documents/{documentGuid}/recipient/{recipientGuid}/fields/{fieldGuid}/locations/{locationGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'locationGuid' + '}', escapeString(location_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateFieldResponse.new(response)
  end

def self._get_signature_template_fields (user_id,template_guid,document_guid,recipient_guid,opts={})
    query_param_keys = [:document_guid,:recipient_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/fields?document={documentGuid}&amp;recipient={recipientGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateFieldsResponse.new(response)
  end

def self._delete_signature_template_field (user_id,template_guid,field_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :field_guid => field_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/fields/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateResponse.new(response)
  end

def self._get_signature_template_resources (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/resources".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateResourcesResponse.new(response)
  end

def self._rename_signature_template_document (user_id,template_guid,document_guid,new_name,opts={})
    query_param_keys = [:new_name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :document_guid => document_guid, :new_name => new_name}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}/document/{documentGuid}?newName={newName}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateDocumentResponse.new(response)
  end

def self._get_contacts (user_id,page,records,first_name,last_name,email,use_and,opts={})
    query_param_keys = [:page,:records,:first_name,:last_name,:email,:use_and]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :page => page, :records => records, :first_name => first_name, :last_name => last_name, :email => email, :use_and => use_and}.merge(opts)

    #resource path
    path = "/signature/{userId}/contacts?firstName={firstName}&amp;lastName={lastName}&amp;email={email}&amp;records={records}&amp;page={page}&amp;useAnd={useAnd}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureContactsResponse.new(response)
  end

def self._add_contact (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/contact".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureContactResponse.new(response)
  end

def self._modify_contact (user_id,contact_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "contact_guid is required" if contact_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :contact_guid => contact_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/contacts/{contactGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'contactGuid' + '}', escapeString(contact_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureContactResponse.new(response)
  end

def self._delete_contact (user_id,contact_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "contact_guid is required" if contact_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :contact_guid => contact_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/contacts/{contactGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'contactGuid' + '}', escapeString(contact_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureContactResponse.new(response)
  end

def self._import_contacts (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/contacts".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureContactsImportResponse.new(response)
  end

def self._add_contact_integration (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/integration".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._sign_document (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/sign".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureSignDocumentResponse.new(response)
  end

def self._get_sign_document_status (user_id,job_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_guid is required" if job_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_guid => job_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/documents/{jobGuid}/status".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobGuid' + '}', escapeString(job_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureSignDocumentStatusResponse.new(response)
  end

def self._archive_signature_envelope (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/archive".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_envelope_audit_logs (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/logs".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeAuditLogsResponse.new(response)
  end

def self._create_signature_envelope (user_id,name,template_guid,envelope_guid,document_guid,parse_fields,body,opts={})
    query_param_keys = [:name,:template_guid,:envelope_guid,:document_guid,:parse_fields]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :name => name, :template_guid => template_guid, :envelope_guid => envelope_guid, :document_guid => document_guid, :parse_fields => parse_fields, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelope?name={name}&amp;templateId={templateGuid}&amp;envelopeId={envelopeGuid}&amp;documentId={documentGuid}&amp;parseFields={parseFields}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResponse.new(response)
  end

def self._decline_envelope (user_id,envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipient/{recipientGuid}/decline".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._delegate_envelope_recipient (user_id,envelope_guid,recipient_guid,recipient_email,recipient_first_name,recipient_last_name,opts={})
    query_param_keys = [:recipient_email,:recipient_first_name,:recipient_last_name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "recipient_email is required" if recipient_email.nil?
    raise "recipient_first_name is required" if recipient_first_name.nil?
    raise "recipient_last_name is required" if recipient_last_name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :recipient_guid => recipient_guid, :recipient_email => recipient_email, :recipient_first_name => recipient_first_name, :recipient_last_name => recipient_last_name}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipient/{recipientGuid}/delegate?email={recipientEmail}&amp;firstname={recipientFirstName}&amp;lastname={recipientLastName}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._delete_signature_envelope (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._add_signature_envelope_document (user_id,envelope_guid,document_guid,order,parse_fields,opts={})
    query_param_keys = [:order,:parse_fields]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :order => order, :parse_fields => parse_fields}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/document/{documentGuid}?parseFields={parseFields}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeDocumentResponse.new(response)
  end

def self._get_signed_envelope_document (user_id,envelope_guid,document_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/document/{documentGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._delete_signature_envelope_document (user_id,envelope_guid,document_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/{documentGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signature_envelope_documents (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeDocumentsResponse.new(response)
  end

def self._get_signed_envelope_documents (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/get".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._add_signature_envelope_field (user_id,envelope_guid,document_guid,recipient_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :recipient_guid => recipient_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/{documentGuid}/recipient/{recipientGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldsResponse.new(response)
  end

def self._assign_signature_envelope_field (user_id,envelope_guid,document_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/{documentGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldResponse.new(response)
  end

def self._fill_envelope_field (user_id,envelope_guid,document_guid,recipient_guid,field_guid,signature_guid,body,opts={})
    query_param_keys = [:signature_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :recipient_guid => recipient_guid, :field_guid => field_guid, :signature_guid => signature_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/{documentGuid}/recipient/{recipientGuid}/field/{fieldGuid}?signatureId={signatureGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldResponse.new(response)
  end

def self._modify_signature_envelope_field_location (user_id,envelope_guid,document_guid,recipient_guid,field_guid,location_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "location_guid is required" if location_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :recipient_guid => recipient_guid, :field_guid => field_guid, :location_guid => location_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/{documentGuid}/recipient/{recipientGuid}/fields/{fieldGuid}/locations/{locationGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'locationGuid' + '}', escapeString(location_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldResponse.new(response)
  end

def self._delete_signature_envelope_field_location (user_id,envelope_guid,field_guid,location_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "location_guid is required" if location_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :field_guid => field_guid, :location_guid => location_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/fields/{fieldGuid}/locations/{locationGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'locationGuid' + '}', escapeString(location_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._modify_signature_envelope_field (user_id,envelope_guid,document_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/documents/{documentGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldResponse.new(response)
  end

def self._delete_signature_envelope_field (user_id,envelope_guid,field_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :field_guid => field_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/fields/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signature_envelope_fields (user_id,envelope_guid,document_guid,recipient_guid,opts={})
    query_param_keys = [:document_guid,:recipient_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/fields?document={documentGuid}&amp;recipient={recipientGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldsResponse.new(response)
  end

def self._get_signature_envelope (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResponse.new(response)
  end

def self._modify_signature_envelope (user_id,envelope_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResponse.new(response)
  end

def self._add_signature_envelope_recipient (user_id,envelope_guid,recipient_email,recipient_first_name,recipient_last_name,role_guid,order,opts={})
    query_param_keys = [:recipient_email,:recipient_first_name,:recipient_last_name,:role_guid,:order]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_email is required" if recipient_email.nil?
    raise "recipient_first_name is required" if recipient_first_name.nil?
    raise "recipient_last_name is required" if recipient_last_name.nil?
    raise "role_guid is required" if role_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :recipient_email => recipient_email, :recipient_first_name => recipient_first_name, :recipient_last_name => recipient_last_name, :role_guid => role_guid, :order => order}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipient?email={recipientEmail}&amp;firstname={recipientFirstName}&amp;lastname={recipientLastName}&amp;role={roleGuid}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeRecipientResponse.new(response)
  end

def self._modify_signature_envelope_recipient (user_id,envelope_guid,recipient_guid,recipient_email,recipient_first_name,recipient_last_name,role_guid,order,opts={})
    query_param_keys = [:recipient_email,:recipient_first_name,:recipient_last_name,:role_guid,:order]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "recipient_email is required" if recipient_email.nil?
    raise "recipient_first_name is required" if recipient_first_name.nil?
    raise "recipient_last_name is required" if recipient_last_name.nil?
    raise "role_guid is required" if role_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :recipient_guid => recipient_guid, :recipient_email => recipient_email, :recipient_first_name => recipient_first_name, :recipient_last_name => recipient_last_name, :role_guid => role_guid, :order => order}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipient/{recipientGuid}?email={recipientEmail}&amp;firstname={recipientFirstName}&amp;lastname={recipientLastName}&amp;role={roleGuid}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeRecipientResponse.new(response)
  end

def self._delete_signature_envelope_recipient (user_id,envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipients/{recipientGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signature_envelope_recipients (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipients".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeRecipientsResponse.new(response)
  end

def self._rename_signature_envelope (user_id,envelope_guid,name,opts={})
    query_param_keys = [:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "name is required" if name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}?name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResponse.new(response)
  end

def self._restart_expired_signature_envelope (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/restart".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._signature_envelope_send (user_id,envelope_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/send".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeSendResponse.new(response)
  end

def self._sign_envelope (user_id,envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/recipient/{recipientGuid}/sign".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signature_envelopes (user_id,status_id,page,records,original_document_m_d5,recipient_email,date,name,opts={})
    query_param_keys = [:status_id,:page,:records,:original_document_m_d5,:recipient_email,:date,:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status_id => status_id, :page => page, :records => records, :original_document_m_d5 => original_document_m_d5, :recipient_email => recipient_email, :date => date, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes?statusId={statusId}&amp;records={records}&amp;page={page}&amp;document={originalDocumentMD5}&amp;recipient={recipientEmail}&amp;date={date}&amp;name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopesResponse.new(response)
  end

def self._get_signature_envelope_resources (user_id,status_ids,opts={})
    query_param_keys = [:status_ids]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status_ids => status_ids}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/resources?statusIds={statusIds}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResourcesResponse.new(response)
  end

def self._get_recipient_signature_envelopes (user_id,status_id,page,records,opts={})
    query_param_keys = [:status_id,:page,:records]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status_id => status_id, :page => page, :records => records}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/recipient?statusId={statusId}&amp;records={records}&amp;page={page}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopesResponse.new(response)
  end

def self._rename_signature_envelope_document (user_id,envelope_guid,document_guid,new_name,opts={})
    query_param_keys = [:new_name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :document_guid => document_guid, :new_name => new_name}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/document/{documentGuid}?newName={newName}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeDocumentResponse.new(response)
  end

def self._cancel_signature_envelope (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/cancel".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._retry_sign_envelope (user_id,envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/retry".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._update_envelope_from_template (user_id,envelope_guid,template_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :envelope_guid => envelope_guid, :template_guid => template_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/envelopes/{envelopeGuid}/templates/{templateGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResponse.new(response)
  end

def self._get_fields_list (user_id,field_guid,opts={})
    query_param_keys = [:field_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :field_guid => field_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/fields?id={fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFieldsResponse.new(response)
  end

def self._create_signature_field (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/field".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFieldResponse.new(response)
  end

def self._modify_signature_field (user_id,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/fields/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFieldResponse.new(response)
  end

def self._delete_signature_field (user_id,field_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :field_guid => field_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/fields/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._archive_signature_form (user_id,form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/archive".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._complete_signature_form (user_id,form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/complete".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._create_signature_form (user_id,name,template_guid,assembly_guid,form_guid,body,opts={})
    query_param_keys = [:name,:template_guid,:assembly_guid,:form_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :name => name, :template_guid => template_guid, :assembly_guid => assembly_guid, :form_guid => form_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/form?name={name}&amp;templateId={templateGuid}&amp;assemblyId={assemblyGuid}&amp;formId={formGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResponse.new(response)
  end

def self._delete_signature_form (user_id,form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._add_signature_form_document (user_id,form_guid,document_guid,order,parse_fields,opts={})
    query_param_keys = [:order,:parse_fields]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid, :order => order, :parse_fields => parse_fields}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/document/{documentGuid}?parseFields={parseFields}&amp;order={order}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormDocumentResponse.new(response)
  end

def self._delete_signature_form_document (user_id,form_guid,document_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents/{documentGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signature_form_documents (user_id,form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormDocumentsResponse.new(response)
  end

def self._add_signature_form_field (user_id,form_guid,document_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents/{documentGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormFieldResponse.new(response)
  end

def self._modify_signature_form_field_location (user_id,form_guid,document_guid,field_guid,location_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "location_guid is required" if location_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid, :field_guid => field_guid, :location_guid => location_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents/{documentGuid}/fields/{fieldGuid}/locations/{locationGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'locationGuid' + '}', escapeString(location_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormFieldResponse.new(response)
  end

def self._delete_signature_form_field_location (user_id,form_guid,field_guid,location_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "location_guid is required" if location_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :field_guid => field_guid, :location_guid => location_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/fields/{fieldGuid}/locations/{locationGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'locationGuid' + '}', escapeString(location_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._modify_signature_form_field (user_id,form_guid,document_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents/{documentGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormFieldResponse.new(response)
  end

def self._delete_signature_form_field (user_id,form_guid,field_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :field_guid => field_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/fields/{fieldGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signature_form_fields (user_id,form_guid,document_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents/{documentGuid}/fields".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormFieldsResponse.new(response)
  end

def self._get_signature_form (user_id,form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResponse.new(response)
  end

def self._modify_signature_form (user_id,form_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResponse.new(response)
  end

def self._publish_signature_form (user_id,form_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/publish".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._rename_signature_form (user_id,form_guid,name,opts={})
    query_param_keys = [:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "name is required" if name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}?new_name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResponse.new(response)
  end

def self._update_signature_form_from_template (user_id,form_guid,template_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :template_guid => template_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/templates/{templateGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResponse.new(response)
  end

def self._get_signature_forms (user_id,status_id,page,records,original_document_m_d5,date,name,opts={})
    query_param_keys = [:status_id,:page,:records,:original_document_m_d5,:date,:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status_id => status_id, :page => page, :records => records, :original_document_m_d5 => original_document_m_d5, :date => date, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms?statusId={statusId}&amp;records={records}&amp;page={page}&amp;document={originalDocumentMD5}&amp;date={date}&amp;name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormsResponse.new(response)
  end

def self._get_signature_form_resources (user_id,status_ids,opts={})
    query_param_keys = [:status_ids]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "status_ids is required" if status_ids.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status_ids => status_ids}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/resources?statusIds={statusIds}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResourcesResponse.new(response)
  end

def self._get_signed_form_documents (user_id,form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/documents/get".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._rename_signature_form_document (user_id,form_guid,document_guid,new_name,opts={})
    query_param_keys = [:new_name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid, :new_name => new_name}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/document/{documentGuid}?newName={newName}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormDocumentResponse.new(response)
  end

def self._modify_signature_form_document (user_id,form_guid,document_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :form_guid => form_guid, :document_guid => document_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/forms/{formGuid}/document/{documentGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormDocumentResponse.new(response)
  end

def self._get_signature_predefined_lists (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/signature/{userId}/lists".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignaturePredefinedListsResponse.new(response)
  end

def self._add_predefined_list (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/list".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignaturePredefinedListResponse.new(response)
  end

def self._delete_predefined_list (user_id,list_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "list_guid is required" if list_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :list_guid => list_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/lists/{listGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'listGuid' + '}', escapeString(list_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignaturePredefinedListsResponse.new(response)
  end

def self._get_roles_list (user_id,role_guid,opts={})
    query_param_keys = [:role_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :role_guid => role_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/roles?id={roleGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureRolesResponse.new(response)
  end

def self._create_signature (user_id,name,body,opts={})
    query_param_keys = [:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "name is required" if name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :name => name, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/signature?name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureSignatureResponse.new(response)
  end

def self._delete_signature (user_id,signature_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "signature_guid is required" if signature_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :signature_guid => signature_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/signatures/{signatureGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'signatureGuid' + '}', escapeString(signature_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._get_signatures (user_id,page,records,name,opts={})
    query_param_keys = [:page,:records,:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :page => page, :records => records, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/signatures?records={records}&amp;page={page}&amp;name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureSignaturesResponse.new(response)
  end

def self._get_signature_templates (user_id,page,records,document_guid,recipient_name,name,opts={})
    query_param_keys = [:page,:records,:document_guid,:recipient_name,:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :page => page, :records => records, :document_guid => document_guid, :recipient_name => recipient_name, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates?records={records}&amp;page={page}&amp;documentGuid={documentGuid}&amp;recipientName={recipientName}&amp;name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplatesResponse.new(response)
  end

def self._get_signature_template (user_id,template_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateResponse.new(response)
  end

def self._create_signature_template (user_id,name,template_guid,envelope_guid,body,opts={})
    query_param_keys = [:name,:template_guid,:envelope_guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "name is required" if name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :name => name, :template_guid => template_guid, :envelope_guid => envelope_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/template?name={name}&amp;templateId={templateGuid}&amp;envelopeId={envelopeGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateResponse.new(response)
  end

def self._modify_signature_template (user_id,template_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateResponse.new(response)
  end

def self._rename_signature_template (user_id,template_guid,name,opts={})
    query_param_keys = [:name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    raise "name is required" if name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid, :name => name}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}?name={name}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureTemplateResponse.new(response)
  end

def self._delete_signature_template (user_id,template_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "template_guid is required" if template_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :template_guid => template_guid}.merge(opts)

    #resource path
    path = "/signature/{userId}/templates/{templateGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'templateGuid' + '}', escapeString(template_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._public_fill_envelope_field (envelope_guid,document_guid,recipient_guid,field_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :document_guid => document_guid, :recipient_guid => recipient_guid, :field_guid => field_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/documents/{documentGuid}/recipient/{recipientGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldResponse.new(response)
  end

def self._public_sign_envelope (envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/recipient/{recipientGuid}/sign".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._public_get_envelope_documents (envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/recipient/{recipientGuid}/documents".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeDocumentsResponse.new(response)
  end

def self._public_get_envelope_recipients (envelope_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/recipients".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeRecipientsResponse.new(response)
  end

def self._public_get_signature_envelope_fields (envelope_guid,document_guid,recipient_guid,opts={})
    query_param_keys = [:document_guid,:recipient_guid]

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :document_guid => document_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/fields?document={documentGuid}&amp;recipient={recipientGuid}".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeFieldsResponse.new(response)
  end

def self._public_get_signature_envelope (envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/recipient/{recipientGuid}".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureEnvelopeResponse.new(response)
  end

def self._public_get_signed_envelope_documents (envelope_guid,recipient_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :recipient_guid => recipient_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/recipient/{recipientGuid}/documents/get".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._public_fill_signature_form (form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/fill".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormParticipantResponse.new(response)
  end

def self._public_fill_form_field (form_guid,document_guid,field_guid,auth_signature,body,participant_id_id,opts={})
    query_param_keys = [:auth_signature]

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    raise "auth_signature is required" if auth_signature.nil?
    raise "participant_id_id is required" if participant_id_id.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid, :document_guid => document_guid, :field_guid => field_guid, :auth_signature => auth_signature, :body => body, :participant_id_id => participant_id_id}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/documents/{documentGuid}/participant/{participantGuid}/field/{fieldGuid}?participantAuthSignature={authSignature}".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    .sub('{' + 'participantIdId' + '}', escapeString(participant_id_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormFieldResponse.new(response)
  end

def self._public_sign_form (form_guid,participant_guid,auth_signature,opts={})
    query_param_keys = [:auth_signature]

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    raise "participant_guid is required" if participant_guid.nil?
    raise "auth_signature is required" if auth_signature.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid, :participant_guid => participant_guid, :auth_signature => auth_signature}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/participant/{participantGuid}/sign?participantAuthSignature={authSignature}".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'participantGuid' + '}', escapeString(participant_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureStatusResponse.new(response)
  end

def self._public_get_signature_form (form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormResponse.new(response)
  end

def self._public_get_signature_form_documents (form_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/documents".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormDocumentsResponse.new(response)
  end

def self._public_get_signature_form_fields (form_guid,document_guid,participant_guid,opts={})
    query_param_keys = [:document_guid,:participant_guid]

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    raise "document_guid is required" if document_guid.nil?
    raise "participant_guid is required" if participant_guid.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid, :document_guid => document_guid, :participant_guid => participant_guid}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/fields?document={documentGuid}&amp;participant={participantGuid}".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormFieldsResponse.new(response)
  end

def self._public_get_signed_form_documents (form_guid,participant_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    raise "participant_guid is required" if participant_guid.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid, :participant_guid => participant_guid}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/participant/{participantGuid}/documents/get".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'participantGuid' + '}', escapeString(participant_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_signature_form_participant (form_guid,participant_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "form_guid is required" if form_guid.nil?
    raise "participant_guid is required" if participant_guid.nil?
    # set default values and merge with input
    options = { :form_guid => form_guid, :participant_guid => participant_guid}.merge(opts)

    #resource path
    path = "/signature/public/forms/{formGuid}/participants/{participantGuid}".sub('{format}','json').sub('{' + 'formGuid' + '}', escapeString(form_guid))
    .sub('{' + 'participantGuid' + '}', escapeString(participant_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureFormParticipantResponse.new(response)
  end

def self._public_sign_document (document_guid,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :document_guid => document_guid, :body => body}.merge(opts)

    #resource path
    path = "/signature/public/documents/{documentGuid}/sign".sub('{format}','json').sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureSignDocumentResponse.new(response)
  end

def self._public_verify_document (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :body => body}.merge(opts)

    #resource path
    path = "/signature/public/verify".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureVerifyDocumentResponse.new(response)
  end

def self._public_get_sign_document_status (job_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "job_guid is required" if job_guid.nil?
    # set default values and merge with input
    options = { :job_guid => job_guid}.merge(opts)

    #resource path
    path = "/signature/public/documents/{jobGuid}/status".sub('{format}','json').sub('{' + 'jobGuid' + '}', escapeString(job_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureSignDocumentStatusResponse.new(response)
  end

def self._public_get_document_fields (document_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "document_guid is required" if document_guid.nil?
    # set default values and merge with input
    options = { :document_guid => document_guid}.merge(opts)

    #resource path
    path = "/signature/public/documents/{documentGuid}/fields".sub('{format}','json').sub('{' + 'documentGuid' + '}', escapeString(document_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SignatureDocumentFieldsResponse.new(response)
  end

def self._get_signature_envelope_field_data (envelope_guid,recipient_guid,field_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "envelope_guid is required" if envelope_guid.nil?
    raise "recipient_guid is required" if recipient_guid.nil?
    raise "field_guid is required" if field_guid.nil?
    # set default values and merge with input
    options = { :envelope_guid => envelope_guid, :recipient_guid => recipient_guid, :field_guid => field_guid}.merge(opts)

    #resource path
    path = "/signature/public/envelopes/{envelopeGuid}/fields/recipient/{recipientGuid}/field/{fieldGuid}".sub('{format}','json').sub('{' + 'envelopeGuid' + '}', escapeString(envelope_guid))
    .sub('{' + 'recipientGuid' + '}', escapeString(recipient_guid))
    .sub('{' + 'fieldGuid' + '}', escapeString(field_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

end

