# OrderCloud::UserApi

All URIs are relative to *https://api.ordercloud.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UserApi.md#create) | **POST** /buyers/{buyerID}/users | 
[**delete**](UserApi.md#delete) | **DELETE** /buyers/{buyerID}/users/{userID} | 
[**get**](UserApi.md#get) | **GET** /buyers/{buyerID}/users/{userID} | 
[**get_access_token**](UserApi.md#get_access_token) | **POST** /buyers/{buyerID}/users/{userID}/accesstoken | 
[**list**](UserApi.md#list) | **GET** /buyers/{buyerID}/users | 
[**patch**](UserApi.md#patch) | **PATCH** /buyers/{buyerID}/users/{userID} | 
[**update**](UserApi.md#update) | **PUT** /buyers/{buyerID}/users/{userID} | 


# **create**
> User create(buyer_id, user)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

user = OrderCloud::User.new # User | 


begin
  result = api_instance.create(buyer_id, user)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete**
> delete(buyer_id, user_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

user_id = "user_id_example" # String | ID of the user.


begin
  api_instance.delete(buyer_id, user_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user_id** | **String**| ID of the user. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **get**
> User get(buyer_id, user_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

user_id = "user_id_example" # String | ID of the user.


begin
  result = api_instance.get(buyer_id, user_id)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user_id** | **String**| ID of the user. | 

### Return type

[**User**](User.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **get_access_token**
> AccessToken get_access_token(buyer_id, user_id, token_request)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

user_id = "user_id_example" # String | ID of the user.

token_request = OrderCloud::ImpersonateTokenRequest.new # ImpersonateTokenRequest | 


begin
  result = api_instance.get_access_token(buyer_id, user_id, token_request)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->get_access_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user_id** | **String**| ID of the user. | 
 **token_request** | [**ImpersonateTokenRequest**](ImpersonateTokenRequest.md)|  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list**
> ListUser list(buyer_id, opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

opts = { 
  user_group_id: "user_group_id_example", # String | ID of the user group.
  search: "search_example", # String | Word or phrase to search for.
  search_on: "search_on_example", # String | Comma-delimited list of fields to search on.
  sort_by: "sort_by_example", # String | Comma-delimited list of fields to sort by.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56, # Integer | Number of results to return per page. Default: 20, max: 100.
  filters: {'key' => "filters_example"} # Hash<String, String> | Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or 'xp.???'
}

begin
  result = api_instance.list(buyer_id, opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user_group_id** | **String**| ID of the user group. | [optional] 
 **search** | **String**| Word or phrase to search for. | [optional] 
 **search_on** | **String**| Comma-delimited list of fields to search on. | [optional] 
 **sort_by** | **String**| Comma-delimited list of fields to sort by. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 
 **filters** | [**Hash&lt;String, String&gt;**](String.md)| Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39; | [optional] 

### Return type

[**ListUser**](ListUser.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **patch**
> patch(buyer_id, user_id, user)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

user_id = "user_id_example" # String | ID of the user.

user = OrderCloud::User.new # User | 


begin
  api_instance.patch(buyer_id, user_id, user)
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user_id** | **String**| ID of the user. | 
 **user** | [**User**](User.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **update**
> User update(buyer_id, user_id, user)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::UserApi.new

buyer_id = "buyer_id_example" # String | ID of the buyer.

user_id = "user_id_example" # String | ID of the user.

user = OrderCloud::User.new # User | 


begin
  result = api_instance.update(buyer_id, user_id, user)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling UserApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **buyer_id** | **String**| ID of the buyer. | 
 **user_id** | **String**| ID of the user. | 
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



