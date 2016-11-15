# OrderCloud::LineItemApi

All URIs are relative to *https://api.ordercloud.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LineItemApi.md#create) | **POST** /buyers/{buyerID}/orders/{orderID}/lineitems | 
[**delete**](LineItemApi.md#delete) | **DELETE** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
[**get**](LineItemApi.md#get) | **GET** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
[**list**](LineItemApi.md#list) | **GET** /buyers/{buyerID}/orders/{orderID}/lineitems | 
[**patch**](LineItemApi.md#patch) | **PATCH** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
[**patch_shipping_address**](LineItemApi.md#patch_shipping_address) | **PATCH** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID}/shipto | 
[**set_shipping_address**](LineItemApi.md#set_shipping_address) | **PUT** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID}/shipto | 
[**update**](LineItemApi.md#update) | **PUT** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 


# **create**
> LineItem create(buyer_id, order_id, line_item)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item = OrderCloud::LineItem.new # LineItem | 


begin
  result = api_instance.create(buyer_id, order_id, line_item)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item** | [**LineItem**](LineItem.md)|  | 

### Return type

[**LineItem**](LineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete**
> Task delete(buyer_id, order_id, line_item_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item_id = "line_item_id_example" # String | ID of the line item.


begin
  result = api_instance.delete(buyer_id, order_id, line_item_id)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item_id** | **String**| ID of the line item. | 

### Return type

[**Task**](Task.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **get**
> LineItem get(buyer_id, order_id, line_item_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item_id = "line_item_id_example" # String | ID of the line item.


begin
  result = api_instance.get(buyer_id, order_id, line_item_id)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item_id** | **String**| ID of the line item. | 

### Return type

[**LineItem**](LineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list**
> ListLineItem list(buyer_id, order_id, opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

opts = { 
  search: "search_example", # String | Word or phrase to search for.
  search_on: "search_on_example", # String | Comma-delimited list of fields to search on.
  sort_by: "sort_by_example", # String | Comma-delimited list of fields to sort by.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56, # Integer | Number of results to return per page. Default: 20, max: 100.
  filters: {'key' => "filters_example"} # Hash<String, String> | Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or 'xp.???'
}

begin
  result = api_instance.list(buyer_id, order_id, opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **search** | **String**| Word or phrase to search for. | [optional] 
 **search_on** | **String**| Comma-delimited list of fields to search on. | [optional] 
 **sort_by** | **String**| Comma-delimited list of fields to sort by. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 
 **filters** | [**Hash&lt;String, String&gt;**](String.md)| Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39; | [optional] 

### Return type

[**ListLineItem**](ListLineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **patch**
> LineItem patch(buyer_id, order_id, line_item_id, partial_line_item)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item_id = "line_item_id_example" # String | ID of the line item.

partial_line_item = OrderCloud::LineItem.new # LineItem | 


begin
  result = api_instance.patch(buyer_id, order_id, line_item_id, partial_line_item)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item_id** | **String**| ID of the line item. | 
 **partial_line_item** | [**LineItem**](LineItem.md)|  | 

### Return type

[**LineItem**](LineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **patch_shipping_address**
> LineItem patch_shipping_address(buyer_id, order_id, line_item_id, partial_address)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item_id = "line_item_id_example" # String | ID of the line item.

partial_address = OrderCloud::Address.new # Address | 


begin
  result = api_instance.patch_shipping_address(buyer_id, order_id, line_item_id, partial_address)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->patch_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item_id** | **String**| ID of the line item. | 
 **partial_address** | [**Address**](Address.md)|  | 

### Return type

[**LineItem**](LineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **set_shipping_address**
> LineItem set_shipping_address(buyer_id, order_id, line_item_id, address)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item_id = "line_item_id_example" # String | ID of the line item.

address = OrderCloud::Address.new # Address | 


begin
  result = api_instance.set_shipping_address(buyer_id, order_id, line_item_id, address)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->set_shipping_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item_id** | **String**| ID of the line item. | 
 **address** | [**Address**](Address.md)|  | 

### Return type

[**LineItem**](LineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **update**
> LineItem update(buyer_id, order_id, line_item_id, line_item)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::LineItemApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

order_id = "order_id_example" # String | ID of the order.

line_item_id = "line_item_id_example" # String | ID of the line item.

line_item = OrderCloud::LineItem.new # LineItem | 


begin
  result = api_instance.update(buyer_id, order_id, line_item_id, line_item)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling LineItemApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **order_id** | **String**| ID of the order. | 
 **line_item_id** | **String**| ID of the line item. | 
 **line_item** | [**LineItem**](LineItem.md)|  | 

### Return type

[**LineItem**](LineItem.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



