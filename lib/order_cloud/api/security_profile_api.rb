=begin
#OrderCloud

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
  class SecurityProfileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param security_profile_id ID of the security profile.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @return [nil]
    def delete_assignment(buyer_id, security_profile_id, opts = {})
      delete_assignment_with_http_info(buyer_id, security_profile_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param security_profile_id ID of the security profile.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_assignment_with_http_info(buyer_id, security_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityProfileApi.delete_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling SecurityProfileApi.delete_assignment" if buyer_id.nil?
      # verify the required parameter 'security_profile_id' is set
      fail ArgumentError, "Missing the required parameter 'security_profile_id' when calling SecurityProfileApi.delete_assignment" if security_profile_id.nil?
      # resource path
      local_var_path = "/securityprofiles/{securityProfileID}/assignments".sub('{format}','json').sub('{' + 'securityProfileID' + '}', security_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'buyerID'] = buyer_id
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
        @api_client.config.logger.debug "API called: SecurityProfileApi#delete_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param security_profile_id ID of the security profile.
    # @param [Hash] opts the optional parameters
    # @return [SecurityProfile]
    def get(security_profile_id, opts = {})
      data, _status_code, _headers = get_with_http_info(security_profile_id, opts)
      return data
    end

    # 
    # 
    # @param security_profile_id ID of the security profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecurityProfile, Fixnum, Hash)>] SecurityProfile data, response status code and response headers
    def get_with_http_info(security_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityProfileApi.get ..."
      end
      # verify the required parameter 'security_profile_id' is set
      fail ArgumentError, "Missing the required parameter 'security_profile_id' when calling SecurityProfileApi.get" if security_profile_id.nil?
      # resource path
      local_var_path = "/securityprofiles/{securityProfileID}".sub('{format}','json').sub('{' + 'securityProfileID' + '}', security_profile_id.to_s)

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
        :return_type => 'SecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityProfileApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [ListSecurityProfile]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return data
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [Array<(ListSecurityProfile, Fixnum, Hash)>] ListSecurityProfile data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityProfileApi.list ..."
      end
      # resource path
      local_var_path = "/securityprofiles".sub('{format}','json')

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
        :return_type => 'ListSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityProfileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :security_profile_id ID of the security profile.
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @option opts [String] :level Level of the security profile.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [ListSecurityProfileAssignment]
    def list_assignments(buyer_id, opts = {})
      data, _status_code, _headers = list_assignments_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :security_profile_id ID of the security profile.
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @option opts [String] :level Level of the security profile.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [Array<(ListSecurityProfileAssignment, Fixnum, Hash)>] ListSecurityProfileAssignment data, response status code and response headers
    def list_assignments_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityProfileApi.list_assignments ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling SecurityProfileApi.list_assignments" if buyer_id.nil?
      # resource path
      local_var_path = "/securityprofiles/assignments".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'buyerID'] = buyer_id
      query_params[:'securityProfileID'] = opts[:'security_profile_id'] if !opts[:'security_profile_id'].nil?
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
        :return_type => 'ListSecurityProfileAssignment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityProfileApi#list_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param assignment 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def save_assignment(assignment, opts = {})
      save_assignment_with_http_info(assignment, opts)
      return nil
    end

    # 
    # 
    # @param assignment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def save_assignment_with_http_info(assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SecurityProfileApi.save_assignment ..."
      end
      # verify the required parameter 'assignment' is set
      fail ArgumentError, "Missing the required parameter 'assignment' when calling SecurityProfileApi.save_assignment" if assignment.nil?
      # resource path
      local_var_path = "/securityprofiles/assignments".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: SecurityProfileApi#save_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
