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
  class CategoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category 
    # @param [Hash] opts the optional parameters
    # @return [Category]
    def create(buyer_id, category, opts = {})
      data, _status_code, _headers = create_with_http_info(buyer_id, category, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Category, Fixnum, Hash)>] Category data, response status code and response headers
    def create_with_http_info(buyer_id, category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.create ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.create" if buyer_id.nil?
      # verify the required parameter 'category' is set
      fail ArgumentError, "Missing the required parameter 'category' when calling CategoryApi.create" if category.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

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
      post_body = @api_client.object_to_http_body(category)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Category')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(buyer_id, category_id, opts = {})
      delete_with_http_info(buyer_id, category_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(buyer_id, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.delete ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.delete" if buyer_id.nil?
      # verify the required parameter 'category_id' is set
      fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoryApi.delete" if category_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/{categoryID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'categoryID' + '}', category_id.to_s)

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
        @api_client.config.logger.debug "API called: CategoryApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @return [nil]
    def delete_assignment(buyer_id, category_id, opts = {})
      delete_assignment_with_http_info(buyer_id, category_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_assignment_with_http_info(buyer_id, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.delete_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.delete_assignment" if buyer_id.nil?
      # verify the required parameter 'category_id' is set
      fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoryApi.delete_assignment" if category_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/{categoryID}/assignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'categoryID' + '}', category_id.to_s)

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
        @api_client.config.logger.debug "API called: CategoryApi#delete_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param product_id ID of the product.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_product_assignment(buyer_id, category_id, product_id, opts = {})
      delete_product_assignment_with_http_info(buyer_id, category_id, product_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param product_id ID of the product.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_product_assignment_with_http_info(buyer_id, category_id, product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.delete_product_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.delete_product_assignment" if buyer_id.nil?
      # verify the required parameter 'category_id' is set
      fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoryApi.delete_product_assignment" if category_id.nil?
      # verify the required parameter 'product_id' is set
      fail ArgumentError, "Missing the required parameter 'product_id' when calling CategoryApi.delete_product_assignment" if product_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/{categoryID}/productassignments/{productID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'categoryID' + '}', category_id.to_s).sub('{' + 'productID' + '}', product_id.to_s)

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
        @api_client.config.logger.debug "API called: CategoryApi#delete_product_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param [Hash] opts the optional parameters
    # @return [Category]
    def get(buyer_id, category_id, opts = {})
      data, _status_code, _headers = get_with_http_info(buyer_id, category_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Category, Fixnum, Hash)>] Category data, response status code and response headers
    def get_with_http_info(buyer_id, category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.get ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.get" if buyer_id.nil?
      # verify the required parameter 'category_id' is set
      fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoryApi.get" if category_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/{categoryID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'categoryID' + '}', category_id.to_s)

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
        :return_type => 'Category')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :depth Depth of the category.
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [ListCategory]
    def list(buyer_id, opts = {})
      data, _status_code, _headers = list_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :depth Depth of the category.
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [Array<(ListCategory, Fixnum, Hash)>] ListCategory data, response status code and response headers
    def list_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.list ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.list" if buyer_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?
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
        :return_type => 'ListCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category_id ID of the category.
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @option opts [String] :level Level of the category.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [ListCategoryAssignment]
    def list_assignments(buyer_id, opts = {})
      data, _status_code, _headers = list_assignments_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category_id ID of the category.
    # @option opts [String] :user_id ID of the user.
    # @option opts [String] :user_group_id ID of the user group.
    # @option opts [String] :level Level of the category.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [Array<(ListCategoryAssignment, Fixnum, Hash)>] ListCategoryAssignment data, response status code and response headers
    def list_assignments_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.list_assignments ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.list_assignments" if buyer_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/assignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'categoryID'] = opts[:'category_id'] if !opts[:'category_id'].nil?
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
        :return_type => 'ListCategoryAssignment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#list_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category_id ID of the category.
    # @option opts [String] :product_id ID of the product.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [ListCategoryProductAssignment]
    def list_product_assignments(buyer_id, opts = {})
      data, _status_code, _headers = list_product_assignments_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category_id ID of the category.
    # @option opts [String] :product_id ID of the product.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @return [Array<(ListCategoryProductAssignment, Fixnum, Hash)>] ListCategoryProductAssignment data, response status code and response headers
    def list_product_assignments_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.list_product_assignments ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.list_product_assignments" if buyer_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/productassignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'categoryID'] = opts[:'category_id'] if !opts[:'category_id'].nil?
      query_params[:'productID'] = opts[:'product_id'] if !opts[:'product_id'].nil?
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
        :return_type => 'ListCategoryProductAssignment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#list_product_assignments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param category 
    # @param [Hash] opts the optional parameters
    # @return [Category]
    def patch(buyer_id, category_id, category, opts = {})
      data, _status_code, _headers = patch_with_http_info(buyer_id, category_id, category, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param category 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Category, Fixnum, Hash)>] Category data, response status code and response headers
    def patch_with_http_info(buyer_id, category_id, category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.patch ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.patch" if buyer_id.nil?
      # verify the required parameter 'category_id' is set
      fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoryApi.patch" if category_id.nil?
      # verify the required parameter 'category' is set
      fail ArgumentError, "Missing the required parameter 'category' when calling CategoryApi.patch" if category.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/{categoryID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'categoryID' + '}', category_id.to_s)

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
      post_body = @api_client.object_to_http_body(category)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Category')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_assignment 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def save_assignment(buyer_id, category_assignment, opts = {})
      save_assignment_with_http_info(buyer_id, category_assignment, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_assignment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def save_assignment_with_http_info(buyer_id, category_assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.save_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.save_assignment" if buyer_id.nil?
      # verify the required parameter 'category_assignment' is set
      fail ArgumentError, "Missing the required parameter 'category_assignment' when calling CategoryApi.save_assignment" if category_assignment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/assignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

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
      post_body = @api_client.object_to_http_body(category_assignment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#save_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param product_assignment 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def save_product_assignment(buyer_id, product_assignment, opts = {})
      save_product_assignment_with_http_info(buyer_id, product_assignment, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param product_assignment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def save_product_assignment_with_http_info(buyer_id, product_assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.save_product_assignment ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.save_product_assignment" if buyer_id.nil?
      # verify the required parameter 'product_assignment' is set
      fail ArgumentError, "Missing the required parameter 'product_assignment' when calling CategoryApi.save_product_assignment" if product_assignment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/productassignments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

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
      post_body = @api_client.object_to_http_body(product_assignment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#save_product_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param category 
    # @param [Hash] opts the optional parameters
    # @return [Category]
    def update(buyer_id, category_id, category, opts = {})
      data, _status_code, _headers = update_with_http_info(buyer_id, category_id, category, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param category_id ID of the category.
    # @param category 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Category, Fixnum, Hash)>] Category data, response status code and response headers
    def update_with_http_info(buyer_id, category_id, category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CategoryApi.update ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling CategoryApi.update" if buyer_id.nil?
      # verify the required parameter 'category_id' is set
      fail ArgumentError, "Missing the required parameter 'category_id' when calling CategoryApi.update" if category_id.nil?
      # verify the required parameter 'category' is set
      fail ArgumentError, "Missing the required parameter 'category' when calling CategoryApi.update" if category.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/categories/{categoryID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'categoryID' + '}', category_id.to_s)

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
      post_body = @api_client.object_to_http_body(category)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Category')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CategoryApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
