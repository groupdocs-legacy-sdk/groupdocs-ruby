require "uri"

class System_api
  basePath = "https://api.groupdocs.com/v2.0"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._simulate_assess_for_pricing_plan (user_id,discount_code,plan_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "discount_code is required" if discount_code.nil?
    raise "plan_id is required" if plan_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :discount_code => discount_code, :plan_id => plan_id}.merge(opts)

    #resource path
    path = "/system/{userId}/plans/{planId}/discounts/{discountCode}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'discountCode' + '}', escapeString(discount_code))
    .sub('{' + 'planId' + '}', escapeString(plan_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetInvoicesResponse.new(response)
  end

def self._get_user_plan (caller_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id}.merge(opts)

    #resource path
    path = "/system/{callerId}/plan".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetPlanResponse.new(response)
  end

def self._get_user_subscription_plan (caller_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id}.merge(opts)

    #resource path
    path = "/system/{callerId}/subscription".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetUserSubscriptionPlanResponse.new(response)
  end

def self._get_subscription_plans (caller_id,family,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "family is required" if family.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :family => family}.merge(opts)

    #resource path
    path = "/system/{callerId}/plans/{family}".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'family' + '}', escapeString(family))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetSubscriptionPlansResponse.new(response)
  end

def self._set_subscription_plan (user_id,product_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "product_id is required" if product_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :product_id => product_id, :body => body}.merge(opts)

    #resource path
    path = "/system/{userId}/subscriptions/{productId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'productId' + '}', escapeString(product_id))
    
    
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
    SetUserSubscriptionPlanResponse.new(response)
  end

def self._update_subscription_plan (user_id,product_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "product_id is required" if product_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :product_id => product_id, :body => body}.merge(opts)

    #resource path
    path = "/system/{userId}/subscriptions/{productId}".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'productId' + '}', escapeString(product_id))
    
    
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
    SetUserSubscriptionPlanResponse.new(response)
  end

def self._get_countries (caller_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id}.merge(opts)

    #resource path
    path = "/system/{callerId}/countries".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetCountriesResponse.new(response)
  end

def self._get_states (caller_id,country_name,opts={})
    query_param_keys = []

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    raise "country_name is required" if country_name.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :country_name => country_name}.merge(opts)

    #resource path
    path = "/system/{callerId}/countries/{countryName}/states".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    .sub('{' + 'countryName' + '}', escapeString(country_name))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetStatesResponse.new(response)
  end

def self._set_billing_address (user_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :body => body}.merge(opts)

    #resource path
    path = "/system/{userId}/billingaddress".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
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
    GetBillingAddressResponse.new(response)
  end

def self._get_invoices (caller_id,page_number,page_size,opts={})
    query_param_keys = [:page_number,:page_size]

    # verify existence of params
    raise "caller_id is required" if caller_id.nil?
    # set default values and merge with input
    options = { :caller_id => caller_id, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/system/{callerId}/invoices?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'callerId' + '}', escapeString(caller_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetInvoicesResponse.new(response)
  end

def self._get_subscription_plan_usage (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/system/{userId}/usage".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetSubscriptionPlanUsageResponse.new(response)
  end

def self._get_purchse_wizard_info (user_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = { :user_id => user_id}.merge(opts)

    #resource path
    path = "/system/{userId}/purchase/wizard".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetPurchaseWizardResponse.new(response)
  end

def self._get_term_suggestions (user_id,term,opts={})
    query_param_keys = []

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "term is required" if term.nil?
    # set default values and merge with input
    options = { :user_id => user_id, :term => term}.merge(opts)

    #resource path
    path = "/system/{userId}/terms/{term}/suggestions".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    .sub('{' + 'term' + '}', escapeString(term))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    GetTermSuggestionsResponse.new(response)
  end

end

