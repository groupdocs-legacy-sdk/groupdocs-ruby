require "uri"

class Shared_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._download (guid,file_name,render,opts={})
    query_param_keys = [:file_name,:render]

    # verify existence of params
    raise "guid is required" if guid.nil?
    raise "file_name is required" if file_name.nil?
    # set default values and merge with input
    options = { :guid => guid, :file_name => file_name, :render => render}.merge(opts)

    #resource path
    path = "/shared/files/{guid}?filename={fileName}&amp;render={render}".sub('{format}','json').sub('{' + 'guid' + '}', escapeString(guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_xml (guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "guid is required" if guid.nil?
    # set default values and merge with input
    options = { :guid => guid}.merge(opts)

    #resource path
    path = "/shared/files/{guid}/xml".sub('{format}','json').sub('{' + 'guid' + '}', escapeString(guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_html (guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "guid is required" if guid.nil?
    # set default values and merge with input
    options = { :guid => guid}.merge(opts)

    #resource path
    path = "/shared/files/{guid}/html".sub('{format}','json').sub('{' + 'guid' + '}', escapeString(guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_package (path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :path => path}.merge(opts)

    #resource path
    path = "/shared/packages/{*path}".sub('{format}','json').sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._login_user (user_name,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_name is required" if user_name.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_name => user_name, :body => body}.merge(opts)

    #resource path
    path = "/shared/users/{userName}/logins".sub('{format}','json').sub('{' + 'userName' + '}', escapeString(user_name))
    
    
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
    UserInfoResponse.new(response)
  end

end

