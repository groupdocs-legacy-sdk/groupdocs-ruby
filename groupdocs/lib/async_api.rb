require "uri"

class Async_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_job_json (user_id,job_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetJobResponse.new(response)
  end

def self._get_job_resources (user_id,status_ids,actions,excluded_actions,opts={})
    query_param_keys = [:status_ids,:actions,:excluded_actions]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "status_ids is required" if status_ids.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status_ids => status_ids, :actions => actions, :excluded_actions => excluded_actions}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/resources?statusIds={statusIds}&amp;actions={actions}&amp;excluded_actions={excludedActions}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetJobResourcesResponse.new(response)
  end

def self._get_job_documents (user_id,job_id,format,opts={})
    query_param_keys = [:format]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id, :format => format}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobId}/documents?format={format}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetJobDocumentsResponse.new(response)
  end

def self._create_job (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    CreateJobResponse.new(response)
  end

def self._delete_job (user_id,job_guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_guid is required" if job_guid.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_guid => job_guid}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobGuid}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobGuid' + '}', escapeString(job_guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResult.new(response)
  end

def self._add_job_document (user_id,job_id,file_id,check_ownership,formats,opts={})
    query_param_keys = [:check_ownership,:formats]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "check_ownership is required" if check_ownership.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id, :file_id => file_id, :check_ownership => check_ownership, :formats => formats}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobId}/files/{fileId}?check_ownership={checkOwnership}&amp;out_formats={formats}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AddJobDocumentResponse.new(response)
  end

def self._delete_job_document (user_id,job_guid,document_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_guid is required" if job_guid.nil?
    raise "document_id is required" if document_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_guid => job_guid, :document_id => document_id}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobGuid}/documents/{documentId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobGuid' + '}', escapeString(job_guid))
    .sub('{' + 'documentId' + '}', escapeString(document_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteResponse.new(response)
  end

def self._add_job_document_url (user_id,job_id,absolute_url,formats,opts={})
    query_param_keys = [:absolute_url,:formats]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    raise "absolute_url is required" if absolute_url.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id, :absolute_url => absolute_url, :formats => formats}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobId}/urls?absolute_url={absoluteUrl}&amp;out_formats={formats}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AddJobDocumentResponse.new(response)
  end

def self._update_job (user_id,job_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id, :body => body}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/{jobId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
    
    
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
    UpdateJobResponse.new(response)
  end

def self._get_jobs (user_id,page_index,page_size,date,status_ids,actions,excluded_actions,opts={})
    query_param_keys = [:page_index,:page_size,:date,:status_ids,:actions,:excluded_actions]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :page_index => page_index, :page_size => page_size, :date => date, :status_ids => status_ids, :actions => actions, :excluded_actions => excluded_actions}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs?page={pageIndex}&amp;count={pageSize}&amp;date={date}&amp;statusIds={statusIds}&amp;actions={actions}&amp;excluded_actions={excludedActions}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetJobsResponse.new(response)
  end

def self._get_jobs_documents (user_id,page_index,page_size,actions,excluded_actions,order_by,order_asc,opts={})
    query_param_keys = [:page_index,:page_size,:actions,:excluded_actions,:order_by,:order_asc]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :page_index => page_index, :page_size => page_size, :actions => actions, :excluded_actions => excluded_actions, :order_by => order_by, :order_asc => order_asc}.merge(opts)

    #resource path
    path = "/async/{userId}/jobs/documents?page={pageIndex}&amp;count={pageSize}&amp;actions={actions}&amp;excluded_actions={excludedActions}&amp;order_by={orderBy}&amp;order_asc={orderAsc}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetJobsDocumentsResponse.new(response)
  end

def self._convert (user_id,file_id,email_results,description,print_script,callback_url,new_type,opts={})
    query_param_keys = [:email_results,:description,:print_script,:callback_url,:new_type]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :email_results => email_results, :description => description, :print_script => print_script, :callback_url => callback_url, :new_type => new_type}.merge(opts)

    #resource path
    path = "/async/{userId}/files/{fileId}?new_type={targetType}&amp;email_results={emailResults}&amp;new_description={description}&amp;print_script={printScript}&amp;callback={callbackUrl}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ConvertResponse.new(response)
  end

end

