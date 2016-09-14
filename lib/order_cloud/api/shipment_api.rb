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
  class ShipmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment 
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def create(buyer_id, shipment, opts = {})
      data, _status_code, _headers = create_with_http_info(buyer_id, shipment, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Fixnum, Hash)>] Shipment data, response status code and response headers
    def create_with_http_info(buyer_id, shipment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.create ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.create" if buyer_id.nil?
      # verify the required parameter 'shipment' is set
      fail ArgumentError, "Missing the required parameter 'shipment' when calling ShipmentApi.create" if shipment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

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
      post_body = @api_client.object_to_http_body(shipment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Shipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(buyer_id, shipment_id, opts = {})
      delete_with_http_info(buyer_id, shipment_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(buyer_id, shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.delete ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.delete" if buyer_id.nil?
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentApi.delete" if shipment_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments/{shipmentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'shipmentID' + '}', shipment_id.to_s)

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
        @api_client.config.logger.debug "API called: ShipmentApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param order_id ID of the order.
    # @param line_item_id ID of the line item.
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def delete_item(buyer_id, shipment_id, order_id, line_item_id, opts = {})
      data, _status_code, _headers = delete_item_with_http_info(buyer_id, shipment_id, order_id, line_item_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param order_id ID of the order.
    # @param line_item_id ID of the line item.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Fixnum, Hash)>] Shipment data, response status code and response headers
    def delete_item_with_http_info(buyer_id, shipment_id, order_id, line_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.delete_item ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.delete_item" if buyer_id.nil?
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentApi.delete_item" if shipment_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling ShipmentApi.delete_item" if order_id.nil?
      # verify the required parameter 'line_item_id' is set
      fail ArgumentError, "Missing the required parameter 'line_item_id' when calling ShipmentApi.delete_item" if line_item_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments/{shipmentID}/items/{orderID}/{lineItemID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'shipmentID' + '}', shipment_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'lineItemID' + '}', line_item_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'Shipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#delete_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def get(buyer_id, shipment_id, opts = {})
      data, _status_code, _headers = get_with_http_info(buyer_id, shipment_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Fixnum, Hash)>] Shipment data, response status code and response headers
    def get_with_http_info(buyer_id, shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.get ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.get" if buyer_id.nil?
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentApi.get" if shipment_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments/{shipmentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'shipmentID' + '}', shipment_id.to_s)

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
        :return_type => 'Shipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_id ID of the order.
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [ListShipment]
    def list(buyer_id, opts = {})
      data, _status_code, _headers = list_with_http_info(buyer_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_id ID of the order.
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [Array<(ListShipment, Fixnum, Hash)>] ListShipment data, response status code and response headers
    def list_with_http_info(buyer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.list ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.list" if buyer_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'orderID'] = opts[:'order_id'] if !opts[:'order_id'].nil?
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
        :return_type => 'ListShipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param shipment 
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def patch(buyer_id, shipment_id, shipment, opts = {})
      data, _status_code, _headers = patch_with_http_info(buyer_id, shipment_id, shipment, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param shipment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Fixnum, Hash)>] Shipment data, response status code and response headers
    def patch_with_http_info(buyer_id, shipment_id, shipment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.patch ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.patch" if buyer_id.nil?
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentApi.patch" if shipment_id.nil?
      # verify the required parameter 'shipment' is set
      fail ArgumentError, "Missing the required parameter 'shipment' when calling ShipmentApi.patch" if shipment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments/{shipmentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'shipmentID' + '}', shipment_id.to_s)

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
      post_body = @api_client.object_to_http_body(shipment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Shipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param item 
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def save_item(buyer_id, shipment_id, item, opts = {})
      data, _status_code, _headers = save_item_with_http_info(buyer_id, shipment_id, item, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Fixnum, Hash)>] Shipment data, response status code and response headers
    def save_item_with_http_info(buyer_id, shipment_id, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.save_item ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.save_item" if buyer_id.nil?
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentApi.save_item" if shipment_id.nil?
      # verify the required parameter 'item' is set
      fail ArgumentError, "Missing the required parameter 'item' when calling ShipmentApi.save_item" if item.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments/{shipmentID}/items".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'shipmentID' + '}', shipment_id.to_s)

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
      post_body = @api_client.object_to_http_body(item)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Shipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#save_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param shipment 
    # @param [Hash] opts the optional parameters
    # @return [Shipment]
    def update(buyer_id, shipment_id, shipment, opts = {})
      data, _status_code, _headers = update_with_http_info(buyer_id, shipment_id, shipment, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param shipment_id ID of the shipment.
    # @param shipment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Shipment, Fixnum, Hash)>] Shipment data, response status code and response headers
    def update_with_http_info(buyer_id, shipment_id, shipment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.update ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling ShipmentApi.update" if buyer_id.nil?
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShipmentApi.update" if shipment_id.nil?
      # verify the required parameter 'shipment' is set
      fail ArgumentError, "Missing the required parameter 'shipment' when calling ShipmentApi.update" if shipment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/shipments/{shipmentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'shipmentID' + '}', shipment_id.to_s)

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
      post_body = @api_client.object_to_http_body(shipment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Shipment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
