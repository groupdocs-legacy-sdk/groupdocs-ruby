require "uri"

class Mgmt_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_user_profile (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/profile".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserInfoResponse.new(response)
  end

def self._update_user_profile (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/profile".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    UpdateUserResponse.new(response)
  end

def self._revoke (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/revoke".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    RevokeResponse.new(response)
  end

def self._change_user_password (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/profile/password".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    ChangePasswordResponse.new(response)
  end

def self._get_user_profile_by_reset_token (caller_id,token,opts={})
    query_param_keys = [:token]

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "token is required" if token.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :token => token}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/reset-tokens?token={token}".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserInfoResponse.new(response)
  end

def self._get_user_profile_by_verif_token (caller_id,token,opts={})
    query_param_keys = [:token]

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "token is required" if token.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :token => token}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/verif-tokens?token={token}".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserInfoResponse.new(response)
  end

def self._get_user_profile_by_claimed_token (caller_id,token,opts={})
    query_param_keys = [:token]

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "token is required" if token.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :token => token}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/claimed-tokens?token={token}".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserInfoResponse.new(response)
  end

def self._get_alien_user_profile (caller_id,user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/profile".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserInfoResponse.new(response)
  end

def self._update_alien_user_profile (caller_id,user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/profile".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    UpdateUserResponse.new(response)
  end

def self._create_user (caller_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
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
    CreateUserResponse.new(response)
  end

def self._create_user_login (caller_id,user_id,password,opts={})
    query_param_keys = [:password]

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    raise "password is required" if password.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id, :password => password}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/logins".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserInfoResponse.new(response)
  end

def self._change_alien_user_password (caller_id,user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/password".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    ChangePasswordResponse.new(response)
  end

def self._reset_user_password (caller_id,user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/password".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ResetPasswordResponse.new(response)
  end

def self._get_storage_providers (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/storages".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetStorageProvidersResponse.new(response)
  end

def self._add_storage_provider (user_id,provider,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "provider is required" if provider.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :provider => provider, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/storages/{provider}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'provider' + '}', escapeString(provider))
    
    
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
    AddStorageProviderResponse.new(response)
  end

def self._update_storage_provider (user_id,provider,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "provider is required" if provider.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :provider => provider, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/storages/{provider}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'provider' + '}', escapeString(provider))
    
    
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
    UpdateStorageProviderResponse.new(response)
  end

def self._get_roles (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/roles".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetRolesResponse.new(response)
  end

def self._get_user_roles (caller_id,user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/roles".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetRolesResponse.new(response)
  end

def self._set_user_roles (caller_id,user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/users/{userId}/roles".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    SetUserRolesResponse.new(response)
  end

def self._get_account (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/account".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetAccountResponse.new(response)
  end

def self._delete_account (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/account".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteAccountResponse.new(response)
  end

def self._get_account_users (admin_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "admin_id is required" if admin_id.nil?
    # set default values and merge with input
    options = { :admin_id => admin_id}.merge(opts)

    #resource path
    path = "/mgmt/{adminId}/account/users".sub('{format}','json').sub('{' + 'adminId' + '}', escapeString(admin_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetAccountUsersResponse.new(response)
  end

def self._update_account_user (admin_id,user_name,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "admin_id is required" if admin_id.nil?
    raise "user_name is required" if user_name.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :admin_id => admin_id, :user_name => user_name, :body => body}.merge(opts)

    #resource path
    path = "/mgmt/{adminId}/account/users/{userName}".sub('{format}','json').sub('{' + 'adminId' + '}', escapeString(admin_id))
    .sub('{' + 'userName' + '}', escapeString(user_name))
    
    
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
    UpdateAccountUserResponse.new(response)
  end

def self._delete_account_user (admin_id,user_name,opts={})
    query_param_keys = []

    # verify existence of params
    raise "admin_id is required" if admin_id.nil?
    raise "user_name is required" if user_name.nil?
    # set default values and merge with input
    options = { :admin_id => admin_id, :user_name => user_name}.merge(opts)

    #resource path
    path = "/mgmt/{adminId}/account/users/{userName}".sub('{format}','json').sub('{' + 'adminId' + '}', escapeString(admin_id))
    .sub('{' + 'userName' + '}', escapeString(user_name))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeleteAccountUserResponse.new(response)
  end

def self._get_user_embed_key (user_id,area,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "area is required" if area.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :area => area}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/embedkey/{area}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'area' + '}', escapeString(area))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetUserEmbedKeyResponse.new(response)
  end

def self._get_user_embed_key_from_guid (caller_id,guid,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "guid is required" if guid.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :guid => guid}.merge(opts)

    #resource path
    path = "/mgmt/{callerId}/embedkey/guid/{guid}".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'guid' + '}', escapeString(guid))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetUserEmbedKeyResponse.new(response)
  end

def self._generate_key_for_user (user_id,area,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "area is required" if area.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :area => area}.merge(opts)

    #resource path
    path = "/mgmt/{userId}/embedkey/new/{area}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'area' + '}', escapeString(area))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetUserEmbedKeyResponse.new(response)
  end

end

