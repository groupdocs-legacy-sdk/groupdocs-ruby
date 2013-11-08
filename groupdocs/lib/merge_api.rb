require "uri"

class Merge_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._add_job_document_data_source (user_id,job_id,file_id,datasource_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id, :file_id => file_id, :datasource_id => datasource_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/jobs/{jobId}/files/{fileId}/datasources/{datasourceId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AddDocumentDataSourceResponse.new(response)
  end

def self._add_job_document_data_source_fields (user_id,job_id,file_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "job_id is required" if job_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :job_id => job_id, :file_id => file_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/jobs/{jobId}/files/{fileId}/datasources".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'jobId' + '}', escapeString(job_id))
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
    AddDocumentDataSourceResponse.new(response)
  end

def self._fill_questionnaire (user_id,collector_id,datasource_id,target_type,email_results,callback_url,opts={})
    query_param_keys = [:target_type,:email_results,:callback_url]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "collector_id is required" if collector_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :collector_id => collector_id, :datasource_id => datasource_id, :target_type => target_type, :email_results => email_results, :callback_url => callback_url}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/collectors/{collectorId}/datasources/{datasourceId}?new_type={targetType}&amp;email_results={emailResults}&amp;callback={callbackUrl}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'collectorId' + '}', escapeString(collector_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    MergeTemplateResponse.new(response)
  end

def self._fill_execution (user_id,execution_id,datasource_id,target_type,email_results,callback_url,opts={})
    query_param_keys = [:target_type,:email_results,:callback_url]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "execution_id is required" if execution_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :execution_id => execution_id, :datasource_id => datasource_id, :target_type => target_type, :email_results => email_results, :callback_url => callback_url}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/executions/{executionId}/datasources/{datasourceId}?new_type={targetType}&amp;email_results={emailResults}&amp;callback={callbackUrl}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'executionId' + '}', escapeString(execution_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    MergeTemplateResponse.new(response)
  end

def self._merge_datasource (user_id,file_id,datasource_id,target_type,email_results,opts={})
    query_param_keys = [:target_type,:email_results]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :datasource_id => datasource_id, :target_type => target_type, :email_results => email_results}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{fileId}/datasources/{datasourceId}?new_type={targetType}&amp;email_results={emailResults}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    MergeTemplateResponse.new(response)
  end

def self._merge_datasource_fields (user_id,file_id,target_type,email_results,assembly_name,body,opts={})
    query_param_keys = [:target_type,:email_results,:assembly_name]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :target_type => target_type, :email_results => email_results, :assembly_name => assembly_name, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{fileId}/datasources?new_type={targetType}&amp;email_results={emailResults}&amp;assembly_name={assemblyName}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
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
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    MergeTemplateResponse.new(response)
  end

def self._get_questionnaire (user_id,questionnaire_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireResponse.new(response)
  end

def self._get_questionnaires (user_id,status,page_number,page_size,order_by,is_ascending,opts={})
    query_param_keys = [:status,:page_number,:page_size,:order_by,:is_ascending]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :status => status, :page_number => page_number, :page_size => page_size, :order_by => order_by, :is_ascending => is_ascending}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires?status={status}&amp;page_number={pageNumber}&amp;page_size={pageSize}&amp;orderBy={orderBy}&amp;isAscending={isAscending}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnairesResponse.new(response)
  end

def self._create_questionnaire (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    CreateQuestionnaireResponse.new(response)
  end

def self._update_questionnaire (user_id,questionnaire_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
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
    UpdateQuestionnaireResponse.new(response)
  end

def self._delete_questionnaire (user_id,questionnaire_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteQuestionnaireResponse.new(response)
  end

def self._get_document_questionnaires (user_id,file_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{fileId}/questionnaires".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDocumentQuestionnairesResponse.new(response)
  end

def self._create_document_questionnaire (user_id,file_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{fileId}/questionnaires".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
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
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AddDocumentQuestionnaireResponse.new(response)
  end

def self._add_document_questionnaire (user_id,file_id,questionnaire_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :questionnaire_id => questionnaire_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{fileId}/questionnaires/{questionnaireId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AddDocumentQuestionnaireResponse.new(response)
  end

def self._delete_document_questionnaire (user_id,file_id,questionnaire_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "file_id is required" if file_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :file_id => file_id, :questionnaire_id => questionnaire_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{fileId}/questionnaires/{questionnaireId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'fileId' + '}', escapeString(file_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteDocumentQuestionnaireResponse.new(response)
  end

def self._add_data_source (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/datasources".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    AddDatasourceResponse.new(response)
  end

def self._update_data_source (user_id,datasource_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :datasource_id => datasource_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/datasources/{datasourceId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
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
    AddDatasourceResponse.new(response)
  end

def self._update_data_source_fields (user_id,datasource_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :datasource_id => datasource_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/datasources/{datasourceId}/fields".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
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
    AddDatasourceResponse.new(response)
  end

def self._delete_data_source (user_id,datasource_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :datasource_id => datasource_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/datasources/{datasourceId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteDatasourceResponse.new(response)
  end

def self._get_data_source (user_id,datasource_id,fields,opts={})
    query_param_keys = [:fields]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "datasource_id is required" if datasource_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :datasource_id => datasource_id, :fields => fields}.merge(opts)

    #resource path
    path = "/merge/{userId}/datasources/{datasourceId}?field={fields}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'datasourceId' + '}', escapeString(datasource_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDatasourceResponse.new(response)
  end

def self._get_questionnaire_data_sources (user_id,questionnaire_id,include_fields,opts={})
    query_param_keys = [:include_fields]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id, :include_fields => include_fields}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/datasources?include_fields={includeFields}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetDatasourcesResponse.new(response)
  end

def self._add_questionnaire_execution (user_id,collector_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "collector_id is required" if collector_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :collector_id => collector_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/collectors/{collectorId}/executions".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'collectorId' + '}', escapeString(collector_id))
    
    
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
    AddQuestionnaireExecutionResponse.new(response)
  end

def self._get_questionnaire_collector_executions (user_id,collector_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "collector_id is required" if collector_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :collector_id => collector_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/collectors/{collectorId}/executions".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'collectorId' + '}', escapeString(collector_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireExecutionsResponse.new(response)
  end

def self._get_questionnaire_executions (user_id,questionnaire_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/executions".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireExecutionsResponse.new(response)
  end

def self._get_questionnaire_execution (user_id,execution_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "execution_id is required" if execution_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :execution_id => execution_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/executions/{executionId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'executionId' + '}', escapeString(execution_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireExecutionResponse.new(response)
  end

def self._delete_questionnaire_execution (user_id,execution_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "execution_id is required" if execution_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :execution_id => execution_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/executions/{executionId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'executionId' + '}', escapeString(execution_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteQuestionnaireExecutionResponse.new(response)
  end

def self._update_questionnaire_execution (user_id,execution_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "execution_id is required" if execution_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :execution_id => execution_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/executions/{executionId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'executionId' + '}', escapeString(execution_id))
    
    
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
    UpdateQuestionnaireExecutionResponse.new(response)
  end

def self._update_questionnaire_execution_status (user_id,execution_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "execution_id is required" if execution_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :execution_id => execution_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/executions/{executionId}/status".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'executionId' + '}', escapeString(execution_id))
    
    
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
    UpdateQuestionnaireExecutionResponse.new(response)
  end

def self._get_questionnaire_collectors (user_id,questionnaire_id,order_by,is_asc,opts={})
    query_param_keys = [:order_by,:is_asc]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    raise "order_by is required" if order_by.nil?
    raise "is_asc is required" if is_asc.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id, :order_by => order_by, :is_asc => is_asc}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/collectors?orderBy={orderBy}&amp;isAsc={isAsc}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireCollectorsResponse.new(response)
  end

def self._get_questionnaire_collector (user_id,collector_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "collector_id is required" if collector_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :collector_id => collector_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/collectors/{collectorId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'collectorId' + '}', escapeString(collector_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireCollectorResponse.new(response)
  end

def self._add_questionnaire_collector (user_id,questionnaire_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/collectors".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
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
    AddQuestionnaireCollectorResponse.new(response)
  end

def self._update_questionnaire_collector (user_id,collector_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "collector_id is required" if collector_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :collector_id => collector_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/collectors/{collectorId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'collectorId' + '}', escapeString(collector_id))
    
    
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
    UpdateQuestionnaireCollectorResponse.new(response)
  end

def self._delete_questionnaire_collector (user_id,collector_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "collector_id is required" if collector_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :collector_id => collector_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/collectors/{collectorId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'collectorId' + '}', escapeString(collector_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteQuestionnaireCollectorResponse.new(response)
  end

def self._get_templates (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/templates".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetTemplatesResponse.new(response)
  end

def self._get_questionnaire_fields (user_id,questionnaire_id,include_geometry,opts={})
    query_param_keys = [:include_geometry]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id, :include_geometry => include_geometry}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/fields?include_geometry={includeGeometry}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TemplateFieldsResponse.new(response)
  end

def self._get_questionnaire_metadata (user_id,questionnaire_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/metadata".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetQuestionnaireMetadataResponse.new(response)
  end

def self._update_questionnaire_metadata (user_id,questionnaire_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "questionnaire_id is required" if questionnaire_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :questionnaire_id => questionnaire_id, :body => body}.merge(opts)

    #resource path
    path = "/merge/{userId}/questionnaires/{questionnaireId}/metadata".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'questionnaireId' + '}', escapeString(questionnaire_id))
    
    
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
    UpdateQuestionnaireResponse.new(response)
  end

def self._copy_file_to_templates (user_id,path,mode,_groupdocs-_copy,_groupdocs-_move,opts={})
    query_param_keys = [:mode]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "path is required" if path.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :path => path, :mode => mode, :_groupdocs-_copy => _groupdocs-_copy, :_groupdocs-_move => _groupdocs-_move}.merge(opts)

    #resource path
    path = "/merge/{userId}/files/{*path}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
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
    GetTemplatesResponse.new(response)
  end

end

