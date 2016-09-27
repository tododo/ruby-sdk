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
  class PaymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def create(buyer_id, order_id, payment, opts = {})
      data, _status_code, _headers = create_with_http_info(buyer_id, order_id, payment, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def create_with_http_info(buyer_id, order_id, payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.create ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.create" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.create" if order_id.nil?
      # verify the required parameter 'payment' is set
      fail ArgumentError, "Missing the required parameter 'payment' when calling PaymentApi.create" if payment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s)

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
      post_body = @api_client.object_to_http_body(payment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def create_transaction(buyer_id, order_id, payment_id, transaction, opts = {})
      data, _status_code, _headers = create_transaction_with_http_info(buyer_id, order_id, payment_id, transaction, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def create_transaction_with_http_info(buyer_id, order_id, payment_id, transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.create_transaction ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.create_transaction" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.create_transaction" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.create_transaction" if payment_id.nil?
      # verify the required parameter 'transaction' is set
      fail ArgumentError, "Missing the required parameter 'transaction' when calling PaymentApi.create_transaction" if transaction.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s)

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
      post_body = @api_client.object_to_http_body(transaction)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#create_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(buyer_id, order_id, payment_id, opts = {})
      delete_with_http_info(buyer_id, order_id, payment_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(buyer_id, order_id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.delete ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.delete" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.delete" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.delete" if payment_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: PaymentApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction_id ID of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_transaction(buyer_id, order_id, payment_id, transaction_id, opts = {})
      delete_transaction_with_http_info(buyer_id, order_id, payment_id, transaction_id, opts)
      return nil
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction_id ID of the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_transaction_with_http_info(buyer_id, order_id, payment_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.delete_transaction ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.delete_transaction" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.delete_transaction" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.delete_transaction" if payment_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentApi.delete_transaction" if transaction_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions/{transactionID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s).sub('{' + 'transactionID' + '}', transaction_id.to_s)

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
        @api_client.config.logger.debug "API called: PaymentApi#delete_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def get(buyer_id, order_id, payment_id, opts = {})
      data, _status_code, _headers = get_with_http_info(buyer_id, order_id, payment_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def get_with_http_info(buyer_id, order_id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.get ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.get" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.get" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.get" if payment_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s)

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
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [ListPayment]
    def list(buyer_id, order_id, opts = {})
      data, _status_code, _headers = list_with_http_info(buyer_id, order_id, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search Word or phrase to search for.
    # @option opts [String] :search_on Comma-delimited list of fields to search on.
    # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
    # @option opts [Integer] :page Page of results to return. Default: 1
    # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
    # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
    # @return [Array<(ListPayment, Fixnum, Hash)>] ListPayment data, response status code and response headers
    def list_with_http_info(buyer_id, order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.list ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.list" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.list" if order_id.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s)

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
        :return_type => 'ListPayment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param partial_payment 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def patch(buyer_id, order_id, payment_id, partial_payment, opts = {})
      data, _status_code, _headers = patch_with_http_info(buyer_id, order_id, payment_id, partial_payment, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param partial_payment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def patch_with_http_info(buyer_id, order_id, payment_id, partial_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.patch ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.patch" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.patch" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.patch" if payment_id.nil?
      # verify the required parameter 'partial_payment' is set
      fail ArgumentError, "Missing the required parameter 'partial_payment' when calling PaymentApi.patch" if partial_payment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s)

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
      post_body = @api_client.object_to_http_body(partial_payment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction_id ID of the transaction.
    # @param partial_transaction 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def patch_transaction(buyer_id, order_id, payment_id, transaction_id, partial_transaction, opts = {})
      data, _status_code, _headers = patch_transaction_with_http_info(buyer_id, order_id, payment_id, transaction_id, partial_transaction, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction_id ID of the transaction.
    # @param partial_transaction 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def patch_transaction_with_http_info(buyer_id, order_id, payment_id, transaction_id, partial_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.patch_transaction ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.patch_transaction" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.patch_transaction" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.patch_transaction" if payment_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentApi.patch_transaction" if transaction_id.nil?
      # verify the required parameter 'partial_transaction' is set
      fail ArgumentError, "Missing the required parameter 'partial_transaction' when calling PaymentApi.patch_transaction" if partial_transaction.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions/{transactionID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s).sub('{' + 'transactionID' + '}', transaction_id.to_s)

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
      post_body = @api_client.object_to_http_body(partial_transaction)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#patch_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def update(buyer_id, order_id, payment_id, payment, opts = {})
      data, _status_code, _headers = update_with_http_info(buyer_id, order_id, payment_id, payment, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def update_with_http_info(buyer_id, order_id, payment_id, payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.update ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.update" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.update" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.update" if payment_id.nil?
      # verify the required parameter 'payment' is set
      fail ArgumentError, "Missing the required parameter 'payment' when calling PaymentApi.update" if payment.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s)

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
      post_body = @api_client.object_to_http_body(payment)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction_id ID of the transaction.
    # @param transaction 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def update_transaction(buyer_id, order_id, payment_id, transaction_id, transaction, opts = {})
      data, _status_code, _headers = update_transaction_with_http_info(buyer_id, order_id, payment_id, transaction_id, transaction, opts)
      return data
    end

    # 
    # 
    # @param buyer_id ID of the buyer.
    # @param order_id ID of the order.
    # @param payment_id ID of the payment.
    # @param transaction_id ID of the transaction.
    # @param transaction 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def update_transaction_with_http_info(buyer_id, order_id, payment_id, transaction_id, transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.update_transaction ..."
      end
      # verify the required parameter 'buyer_id' is set
      fail ArgumentError, "Missing the required parameter 'buyer_id' when calling PaymentApi.update_transaction" if buyer_id.nil?
      # verify the required parameter 'order_id' is set
      fail ArgumentError, "Missing the required parameter 'order_id' when calling PaymentApi.update_transaction" if order_id.nil?
      # verify the required parameter 'payment_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_id' when calling PaymentApi.update_transaction" if payment_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentApi.update_transaction" if transaction_id.nil?
      # verify the required parameter 'transaction' is set
      fail ArgumentError, "Missing the required parameter 'transaction' when calling PaymentApi.update_transaction" if transaction.nil?
      # resource path
      local_var_path = "/buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions/{transactionID}".sub('{format}','json').sub('{' + 'buyerID' + '}', buyer_id.to_s).sub('{' + 'orderID' + '}', order_id.to_s).sub('{' + 'paymentID' + '}', payment_id.to_s).sub('{' + 'transactionID' + '}', transaction_id.to_s)

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
      post_body = @api_client.object_to_http_body(transaction)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#update_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
