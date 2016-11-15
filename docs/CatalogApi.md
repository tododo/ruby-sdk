# OrderCloud::CatalogApi

All URIs are relative to *https://api.ordercloud.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CatalogApi.md#create) | **POST** /catalogs | 
[**delete**](CatalogApi.md#delete) | **DELETE** /catalogs/{catalogID} | 
[**delete_assignment**](CatalogApi.md#delete_assignment) | **DELETE** /catalogs/{catalogID}/assignments | 
[**get**](CatalogApi.md#get) | **GET** /catalogs/{catalogID} | 
[**list**](CatalogApi.md#list) | **GET** /catalogs | 
[**list_assignments**](CatalogApi.md#list_assignments) | **GET** /catalogs/assignments | 
[**patch**](CatalogApi.md#patch) | **PATCH** /catalogs/{catalogID} | 
[**save_assignment**](CatalogApi.md#save_assignment) | **POST** /catalogs/assignments | 
[**update**](CatalogApi.md#update) | **PUT** /catalogs/{catalogID} | 


# **create**
> Catalog create(catalog)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

catalog = OrderCloud::Catalog.new # Catalog | 


begin
  result = api_instance.create(catalog)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog** | [**Catalog**](Catalog.md)|  | 

### Return type

[**Catalog**](Catalog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete**
> delete(catalog_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.


begin
  api_instance.delete(catalog_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete_assignment**
> delete_assignment(catalog_id, buyer_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

buyer_id = "buyer_id_example" # String | ID of the buyer.


begin
  api_instance.delete_assignment(catalog_id, buyer_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->delete_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **buyer_id** | **String**| ID of the buyer. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **get**
> Catalog get(catalog_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.


begin
  result = api_instance.get(catalog_id)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 

### Return type

[**Catalog**](Catalog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list**
> ListCatalog list(opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

opts = { 
  search: "search_example", # String | Word or phrase to search for.
  search_on: "search_on_example", # String | Comma-delimited list of fields to search on.
  sort_by: "sort_by_example", # String | Comma-delimited list of fields to sort by.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56, # Integer | Number of results to return per page. Default: 20, max: 100.
  filters: {'key' => "filters_example"} # Hash<String, String> | Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or 'xp.???'
}

begin
  result = api_instance.list(opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Word or phrase to search for. | [optional] 
 **search_on** | **String**| Comma-delimited list of fields to search on. | [optional] 
 **sort_by** | **String**| Comma-delimited list of fields to sort by. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 
 **filters** | [**Hash&lt;String, String&gt;**](String.md)| Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39; | [optional] 

### Return type

[**ListCatalog**](ListCatalog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list_assignments**
> ListCatalogAssignment list_assignments(opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

opts = { 
  catalog_id: "catalog_id_example", # String | ID of the catalog.
  buyer_id: "buyer_id_example", # String | ID of the buyer.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56 # Integer | Number of results to return per page. Default: 20, max: 100.
}

begin
  result = api_instance.list_assignments(opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->list_assignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | [optional] 
 **buyer_id** | **String**| ID of the buyer. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 

### Return type

[**ListCatalogAssignment**](ListCatalogAssignment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **patch**
> Catalog patch(catalog_id, partial_catalog)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

partial_catalog = OrderCloud::Catalog.new # Catalog | 


begin
  result = api_instance.patch(catalog_id, partial_catalog)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **partial_catalog** | [**Catalog**](Catalog.md)|  | 

### Return type

[**Catalog**](Catalog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **save_assignment**
> save_assignment(assignment)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

assignment = OrderCloud::CatalogAssignment.new # CatalogAssignment | 


begin
  api_instance.save_assignment(assignment)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->save_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assignment** | [**CatalogAssignment**](CatalogAssignment.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **update**
> Catalog update(catalog_id, catalog)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CatalogApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

catalog = OrderCloud::Catalog.new # Catalog | 


begin
  result = api_instance.update(catalog_id, catalog)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CatalogApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **catalog** | [**Catalog**](Catalog.md)|  | 

### Return type

[**Catalog**](Catalog.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



