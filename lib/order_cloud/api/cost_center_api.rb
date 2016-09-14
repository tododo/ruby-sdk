=begin
#OrderCloud

#A full ecommerce backend as a service.

OpenAPI spec version: 1.0
Contact: ordercloud@four51.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module OrderCloud
  class CostCenterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center 
    # @param [Hash] opts the optional parameters
    # @return [CostCenter]
    def create(buyer_id, cost_center, opts = {})
      data, _status_code, _headers = create_with_http_info(buyer_id, cost_center, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostCenter, Fixnum, Hash)>] CostCenter data, response status code and response headers
    def create_with_http_info(buyer_id, cost_center, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.create ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.create" if buyer_id.nil?
      # verify the required parameter 'cost_center' is set
      fail ArgumentError, "Missing the required parameter 'cost_center' when calling CostCenterApi.create" if cost_center.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cost_center)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CostCenter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(buyer_id, cost_center_id, opts = {})
      delete_with_http_info(buyer_id, cost_center_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(buyer_id, cost_center_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.delete ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.delete" if buyer_id.nil?
      # verify the required parameter 'cost_center_id' is set
      fail ArgumentError, "Missing the required parameter 'cost_center_id' when calling CostCenterApi.delete" if cost_center_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/{costCenterID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'costCenterID' + '}', cost_center_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @return [nil]
    def delete_assignment(buyer_id, cost_center_id, opts = {})
      delete_assignment_with_http_info(buyer_id, cost_center_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_assignment_with_http_info(buyer_id, cost_center_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.delete_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.delete_assignment" if buyer_id.nil?
      # verify the required parameter 'cost_center_id' is set
      fail ArgumentError, "Missing the required parameter 'cost_center_id' when calling CostCenterApi.delete_assignment" if cost_center_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/{costCenterID}/assignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'costCenterID' + '}', cost_center_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'userID'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'userGroupID'] = opts[:'user_group_id'] if !opts[:'user_group_id'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#delete_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param [Hash] opts the optional parameters
    # @return [CostCenter]
    def get(buyer_id, cost_center_id, opts = {})
      data, _status_code, _headers = get_with_http_info(buyer_id, cost_center_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostCenter, Fixnum, Hash)>] CostCenter data, response status code and response headers
    def get_with_http_info(buyer_id, cost_center_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.get ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.get" if buyer_id.nil?
      # verify the required parameter 'cost_center_id' is set
      fail ArgumentError, "Missing the required parameter 'cost_center_id' when calling CostCenterApi.get" if cost_center_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/{costCenterID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'costCenterID' + '}', cost_center_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CostCenter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [ListCostCenter]
    def list(buyer_id, opts = {})
      data, _status_code, _headers = list_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [Array<(ListCostCenter, Fixnum, Hash)>] ListCostCenter data, response status code and response headers
    def list_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.list ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.list" if buyer_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'searchOn'] = opts[:'search_on'] if !opts[:'search_on'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'filters'] = opts[:'filters'] if !opts[:'filters'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListCostCenter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cost_center_id ID of the cost center.
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @option opts [String] :level Level of the cost center.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [ListCostCenterAssignment]
    def list_assignments(buyer_id, opts = {})
      data, _status_code, _headers = list_assignments_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cost_center_id ID of the cost center.
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @option opts [String] :level Level of the cost center.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [Array<(ListCostCenterAssignment, Fixnum, Hash)>] ListCostCenterAssignment data, response status code and response headers
    def list_assignments_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.list_assignments ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.list_assignments" if buyer_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/assignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'costCenterID'] = opts[:'cost_center_id'] if !opts[:'cost_center_id'].nil?
      query_params[:'userID'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'userGroupID'] = opts[:'user_group_id'] if !opts[:'user_group_id'].nil?
      query_params[:'level'] = opts[:'level'] if !opts[:'level'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListCostCenterAssignment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#list_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param cost_center 
    # @param [Hash] opts the optional parameters
    # @return [CostCenter]
    def patch(buyer_id, cost_center_id, cost_center, opts = {})
      data, _status_code, _headers = patch_with_http_info(buyer_id, cost_center_id, cost_center, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param cost_center 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostCenter, Fixnum, Hash)>] CostCenter data, response status code and response headers
    def patch_with_http_info(buyer_id, cost_center_id, cost_center, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.patch ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.patch" if buyer_id.nil?
      # verify the required parameter 'cost_center_id' is set
      fail ArgumentError, "Missing the required parameter 'cost_center_id' when calling CostCenterApi.patch" if cost_center_id.nil?
      # verify the required parameter 'cost_center' is set
      fail ArgumentError, "Missing the required parameter 'cost_center' when calling CostCenterApi.patch" if cost_center.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/{costCenterID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'costCenterID' + '}', cost_center_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cost_center)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CostCenter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param assignment 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def save_assignment(buyer_id, assignment, opts = {})
      save_assignment_with_http_info(buyer_id, assignment, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param assignment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def save_assignment_with_http_info(buyer_id, assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.save_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.save_assignment" if buyer_id.nil?
      # verify the required parameter 'assignment' is set
      fail ArgumentError, "Missing the required parameter 'assignment' when calling CostCenterApi.save_assignment" if assignment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/assignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(assignment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#save_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param cost_center 
    # @param [Hash] opts the optional parameters
    # @return [CostCenter]
    def update(buyer_id, cost_center_id, cost_center, opts = {})
      data, _status_code, _headers = update_with_http_info(buyer_id, cost_center_id, cost_center, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param cost_center_id ID of the cost center.
    # @param cost_center 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CostCenter, Fixnum, Hash)>] CostCenter data, response status code and response headers
    def update_with_http_info(buyer_id, cost_center_id, cost_center, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CostCenterApi.update ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CostCenterApi.update" if buyer_id.nil?
      # verify the required parameter 'cost_center_id' is set
      fail ArgumentError, "Missing the required parameter 'cost_center_id' when calling CostCenterApi.update" if cost_center_id.nil?
      # verify the required parameter 'cost_center' is set
      fail ArgumentError, "Missing the required parameter 'cost_center' when calling CostCenterApi.update" if cost_center.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/costcenters/{costCenterID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'costCenterID' + '}', cost_center_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/plain; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(cost_center)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CostCenter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CostCenterApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end