require "uri"

class Storage_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_storage_info (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/storage/{userId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    StorageInfoResponse.new(response)
  end

def self._list_entities (user_id,path,page_index,page_size,order_by,order_asc,filter,file_types,extended,opts={})
    query_param_keys = [:page_index,:page_size,:order_by,:order_asc,:filter,:file_types,:extended]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :page_index => page_index, :page_size => page_size, :order_by => order_by, :order_asc => order_asc, :filter => filter, :file_types => file_types, :extended => extended}.merge(opts)

    #resource path
    path = "/storage/{userId}/folders/{*path}?page={pageIndex}&amp;count={pageSize}&amp;order_by={orderBy}&amp;order_asc={orderAsc}&amp;filter={filter}&amp;file_types={fileTypes}&amp;extended={extended}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ListEntitiesResponse.new(response)
  end

def self._get_file (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/storage/{userId}/files/{fileId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_shared_file (user_email,file_path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_email is required" if user_email.nil?
    raise "file_path is required" if file_path.nil?
    # set default values and merge with input
    options = { :user_email => user_email, :file_path => file_path}.merge(opts)

    #resource path
    path = "/storage/shared/{userEmail}/{*filePath}".sub('{format}','json').sub('{' + 'userEmail' + '}', escapeString(user_email))
    .sub('{' + 'filePath' + '}', escapeString(file_path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._upload (user_id,path,description,callback_url,body,opts={})
    query_param_keys = [:description,:callback_url]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :description => description, :callback_url => callback_url, :body => body}.merge(opts)

    #resource path
    path = "/storage/{userId}/folders/{*path}?description={description}&amp;callbackUrl={callbackUrl}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
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
    UploadResponse.new(response)
  end

def self._decompress (user_id,path,description,archive_type,body,opts={})
    query_param_keys = [:description,:archive_type]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :description => description, :archive_type => archive_type, :body => body}.merge(opts)

    #resource path
    path = "/storage/{userId}/decompress/{*path}?description={description}&amp;archiveType={archiveType}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
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
    UploadResponse.new(response)
  end

def self._upload_web (user_id,url,opts={})
    query_param_keys = [:url]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "url is required" if url.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :url => url}.merge(opts)

    #resource path
    path = "/storage/{userId}/urls?url={url}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UploadResponse.new(response)
  end

def self._upload_google (user_id,path,file_id,opts={})
    query_param_keys = [:file_id]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :file_id => file_id}.merge(opts)

    #resource path
    path = "/storage/{userId}/google/files/{*path}?file_id={fileId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UploadResponse.new(response)
  end

def self._delete (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/storage/{userId}/files/{fileId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResponse.new(response)
  end

def self._delete_from_folder (user_id,path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path}.merge(opts)

    #resource path
    path = "/storage/{userId}/folders/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResponse.new(response)
  end

def self._move_file (user_id,path,mode,_groupdocs-_copy,_groupdocs-_move,opts={})
    query_param_keys = [:mode]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :mode => mode, :_groupdocs-_copy => _groupdocs-_copy, :_groupdocs-_move => _groupdocs-_move}.merge(opts)

    #resource path
    path = "/storage/{userId}/files/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = {
      _groupdocs-_copy: _groupdocs-_copy,
    }
    headers = {
      _groupdocs-_move: _groupdocs-_move,
    }
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    FileMoveResponse.new(response)
  end

def self._move_folder (user_id,path,mode,_groupdocs-_move,_groupdocs-_copy,opts={})
    query_param_keys = [:mode]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :mode => mode, :_groupdocs-_move => _groupdocs-_move, :_groupdocs-_copy => _groupdocs-_copy}.merge(opts)

    #resource path
    path = "/storage/{userId}/folders/{*path}?override_mode={mode}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = {
      _groupdocs-_move: _groupdocs-_move,
    }
    headers = {
      _groupdocs-_copy: _groupdocs-_copy,
    }
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    FolderMoveResponse.new(response)
  end

def self._create (user_id,path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path}.merge(opts)

    #resource path
    path = "/storage/{userId}/paths/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CreateFolderResponse.new(response)
  end

def self._compress (user_id,file_id,archive_type,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "archive_type is required" if archive_type.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :archive_type => archive_type}.merge(opts)

    #resource path
    path = "/storage/{userId}/files/{fileId}/archive/{archiveType}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'archiveType' + '}', escapeString(archive_type))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CompressResponse.new(response)
  end

def self._create_package (user_id,package_name,store_relative_path,body,opts={})
    query_param_keys = [:store_relative_path]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "package_name is required" if package_name.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :package_name => package_name, :store_relative_path => store_relative_path, :body => body}.merge(opts)

    #resource path
    path = "/storage/{userId}/packages/{packageName}?storeRelativePath={storeRelativePath}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'packageName' + '}', escapeString(package_name))
    
    
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
    CreatePackageResponse.new(response)
  end

def self._move_to_trash (user_id,path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path}.merge(opts)

    #resource path
    path = "/storage/{userId}/trash/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    FolderMoveResponse.new(response)
  end

def self._restore_from_trash (user_id,path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path}.merge(opts)

    #resource path
    path = "/storage/{userId}/trash/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResponse.new(response)
  end

end

