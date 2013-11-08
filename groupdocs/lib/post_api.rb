require "uri"

class Post_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._rename_by_post (user_id,file_id,new_name,opts={})
    query_param_keys = [:user_id,:file_id,:new_name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "new_name is required" if new_name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :new_name => new_name}.merge(opts)

    #resource path
    path = "/post/file.rename?user_id={userId}&amp;file_id={fileId}&amp;new_name={newName}".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    RenameResponse.new(response)
  end

def self._delete_by_post (user_id,file_id,opts={})
    query_param_keys = [:user_id,:file_id]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/post/file.delete?user_id={userId}&amp;file_id={fileId}".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResponse.new(response)
  end

def self._delete_from_folder_by_post (user_id,path,opts={})
    query_param_keys = [:user_id,:path]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path}.merge(opts)

    #resource path
    path = "/post/file.delete.in?user_id={userId}&amp;path={path}".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResponse.new(response)
  end

def self._compress_by_post (user_id,file_id,archive_type,opts={})
    query_param_keys = [:user_id,:file_id,:archive_type]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "archive_type is required" if archive_type.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :archive_type => archive_type}.merge(opts)

    #resource path
    path = "/post/file.compress?user_id={userId}&amp;file_id={fileId}&amp;archive_type={archiveType}".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CompressResponse.new(response)
  end

end

