require "uri"

class Comparison_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._compare (user_id,source_file_id,target_file_id,callback_url,opts={})
    query_param_keys = [:source_file_id,:target_file_id,:callback_url]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "source_file_id is required" if source_file_id.nil?
    raise "target_file_id is required" if target_file_id.nil?
    raise "callback_url is required" if callback_url.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :source_file_id => source_file_id, :target_file_id => target_file_id, :callback_url => callback_url}.merge(opts)

    #resource path
    path = "/comparison/{userId}/comparison/compare?source={sourceFileId}&amp;target={targetFileId}&amp;callback={callbackUrl}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CompareResponse.new(response)
  end

def self._get_changes (user_id,result_file_id,opts={})
    query_param_keys = [:result_file_id]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "result_file_id is required" if result_file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :result_file_id => result_file_id}.merge(opts)

    #resource path
    path = "/comparison/{userId}/comparison/changes?resultFileId={resultFileId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ChangesResponse.new(response)
  end

def self._update_changes (user_id,result_file_id,body,opts={})
    query_param_keys = [:result_file_id]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "result_file_id is required" if result_file_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :result_file_id => result_file_id, :body => body}.merge(opts)

    #resource path
    path = "/comparison/{userId}/comparison/changes?resultFileId={resultFileId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    ChangesResponse.new(response)
  end

def self._get_document_details (user_id,guid,opts={})
    query_param_keys = [:guid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "guid is required" if guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :guid => guid}.merge(opts)

    #resource path
    path = "/comparison/{userId}/comparison/document?guid={guid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DocumentDetailsResponse.new(response)
  end

def self._download_result (user_id,result_file_id,format,opts={})
    query_param_keys = [:result_file_id,:format]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "result_file_id is required" if result_file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :result_file_id => result_file_id, :format => format}.merge(opts)

    #resource path
    path = "/comparison/{userId}/comparison/download?resultFileId={resultFileId}&amp;format={format}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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

