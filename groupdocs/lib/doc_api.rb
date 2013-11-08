require "uri"

class Doc_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._view_document (user_id,file_id,page_number,page_count,width,quality,use_pdf,password_salt,opts={})
    query_param_keys = [:page_number,:page_count,:width,:quality,:use_pdf,:password_salt]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :page_number => page_number, :page_count => page_count, :width => width, :quality => quality, :use_pdf => use_pdf, :password_salt => password_salt}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/thumbnails?page_number={pageNumber}&amp;page_count={pageCount}&amp;width={width}&amp;quality={quality}&amp;use_pdf={usePdf}&amp;passwordSalt={passwordSalt}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ViewDocumentResponse.new(response)
  end

def self._view_document_as_html (user_id,file_id,page_number,page_count,password_salt,opts={})
    query_param_keys = [:page_number,:page_count,:password_salt]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :page_number => page_number, :page_count => page_count, :password_salt => password_salt}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/htmlRepresentations?page_number={pageNumber}&amp;page_count={pageCount}&amp;passwordSalt={passwordSalt}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ViewDocumentResponse.new(response)
  end

def self._get_document_views (user_id,start_index,page_size,opts={})
    query_param_keys = [:start_index,:page_size]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :start_index => start_index, :page_size => page_size}.merge(opts)

    #resource path
    path = "/doc/{userId}/views?page_index={startIndex}&amp;page_size={pageSize}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DocumentViewsResponse.new(response)
  end

def self._share_document (user_id,file_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :body => body}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/sharers".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
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
    SharedUsersResponse.new(response)
  end

def self._set_document_password (user_id,file_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :body => body}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/password".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
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
    SetDocumentPasswordResponse.new(response)
  end

def self._unshare_document (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/sharers".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SharedUsersResponse.new(response)
  end

def self._get_folder_sharers (user_id,folder_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "folder_id is required" if folder_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :folder_id => folder_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/folders/{folderId}/sharers".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'folderId' + '}', escapeString(folder_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SharedUsersResponse.new(response)
  end

def self._share_folder (user_id,folder_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "folder_id is required" if folder_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :folder_id => folder_id, :body => body}.merge(opts)

    #resource path
    path = "/doc/{userId}/folders/{folderId}/sharers".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'folderId' + '}', escapeString(folder_id))
    
    
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
    SharedUsersResponse.new(response)
  end

def self._unshare_folder (user_id,folder_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "folder_id is required" if folder_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :folder_id => folder_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/folders/{folderId}/sharers".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'folderId' + '}', escapeString(folder_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SharedUsersResponse.new(response)
  end

def self._set_document_access_mode (user_id,file_id,mode,opts={})
    query_param_keys = [:mode]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :mode => mode}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/accessinfo?mode={mode}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DocumentAccessInfoResponse.new(response)
  end

def self._get_document_access_info (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/accessinfo".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DocumentAccessInfoResponse.new(response)
  end

def self._get_document_metadata (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/metadata".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDocumentInfoResponse.new(response)
  end

def self._get_document_metadata_by_path (user_id,path,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'path' + '}', escapeString(path))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDocumentInfoResponse.new(response)
  end

def self._set_document_user_status (user_id,file_id,status,opts={})
    query_param_keys = [:status]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "status is required" if status.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :status => status}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/sharer".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DocumentUserStatusResponse.new(response)
  end

def self._get_shared_documents (user_id,shares_types,page_index,page_size,order_by,order_asc,opts={})
    query_param_keys = [:page_index,:page_size,:order_by,:order_asc]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "shares_types is required" if shares_types.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :shares_types => shares_types, :page_index => page_index, :page_size => page_size, :order_by => order_by, :order_asc => order_asc}.merge(opts)

    #resource path
    path = "/doc/{userId}/shares/{sharesTypes}?page_index={pageIndex}&amp;page_size={pageSize}&amp;order_by={orderBy}&amp;order_asc={orderAsc}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'sharesTypes' + '}', escapeString(shares_types))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SharedDocumentsResponse.new(response)
  end

def self._get_template_fields (user_id,file_id,include_geometry,opts={})
    query_param_keys = [:include_geometry]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :include_geometry => include_geometry}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/fields?include_geometry={includeGeometry}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TemplateFieldsResponse.new(response)
  end

def self._get_document_formats (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/formats".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDocumentForeignTypesResponse.new(response)
  end

def self._get_document_page_image (user_id,file_id,page_number,dimension,quality,use_pdf,expires_on,opts={})
    query_param_keys = [:quality,:use_pdf,:expires_on]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "page_number is required" if page_number.nil?
    raise "dimension is required" if dimension.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :page_number => page_number, :dimension => dimension, :quality => quality, :use_pdf => use_pdf, :expires_on => expires_on}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/pages/{pageNumber}/images/{dimension}?quality={quality}&amp;use_pdf={usePdf}&amp;expires={expiresOn}&amp;v={version}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    .sub('{' + 'dimension' + '}', escapeString(dimension))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_document_page_html_fixed (user_id,file_id,page_number,expires_on,opts={})
    query_param_keys = [:expires_on]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "page_number is required" if page_number.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :page_number => page_number, :expires_on => expires_on}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/pages/{pageNumber}/htmlFixed?expires={expiresOn}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_document_page_html (user_id,file_id,page_number,expires_on,opts={})
    query_param_keys = [:expires_on]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "page_number is required" if page_number.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :page_number => page_number, :expires_on => expires_on}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/pages/{pageNumber}/htmlRepresentations?expires={expiresOn}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    stream.new(response)
  end

def self._get_document_pages_image_urls (user_id,file_id,first_page,page_count,dimension,quality,use_pdf,token,opts={})
    query_param_keys = [:first_page,:page_count,:quality,:use_pdf,:token]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "dimension is required" if dimension.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :first_page => first_page, :page_count => page_count, :dimension => dimension, :quality => quality, :use_pdf => use_pdf, :token => token}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/pages/images/{dimension}/urls?first_page={firstPage}&amp;page_count={pageCount}&amp;quality={quality}&amp;use_pdf={usePdf}&amp;token={token}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'dimension' + '}', escapeString(dimension))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetImageUrlsResponse.new(response)
  end

def self._get_document_pages_html_urls (user_id,file_id,first_page,page_count,opts={})
    query_param_keys = [:first_page,:page_count]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :first_page => first_page, :page_count => page_count}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/pages/htmlRepresentationUrls?first_page={firstPage}&amp;page_count={pageCount}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetImageUrlsResponse.new(response)
  end

def self._get_edit_lock (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/editlock".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetEditLockResponse.new(response)
  end

def self._remove_edit_lock (user_id,file_id,lock_id,opts={})
    query_param_keys = [:lock_id]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "lock_id is required" if lock_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :lock_id => lock_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/editlock".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    RemoveEditLockResponse.new(response)
  end

def self._get_document_tags (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/tags".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetTagsResponse.new(response)
  end

def self._set_document_tags (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/tags".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SetTagsResponse.new(response)
  end

def self._remove_document_tags (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/tags".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    RemoveTagsResponse.new(response)
  end

def self._get_document_content (user_id,file_id,content_type,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "content_type is required" if content_type.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :content_type => content_type}.merge(opts)

    #resource path
    path = "/doc/{userId}/files/{fileId}/content/{contentType}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'contentType' + '}', escapeString(content_type))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDocumentContentResponse.new(response)
  end

end

