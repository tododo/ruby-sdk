# OrderCloud::CategoryApi

All URIs are relative to *https://api.ordercloud.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CategoryApi.md#create) | **POST** /catalogs/{catalogID}/categories | 
[**delete**](CategoryApi.md#delete) | **DELETE** /catalogs/{catalogID}/categories/{categoryID} | 
[**delete_assignment**](CategoryApi.md#delete_assignment) | **DELETE** /catalogs/{catalogID}/categories/{categoryID}/assignments | 
[**delete_product_assignment**](CategoryApi.md#delete_product_assignment) | **DELETE** /catalogs/{catalogID}/categories/{categoryID}/productassignments/{productID} | 
[**get**](CategoryApi.md#get) | **GET** /catalogs/{catalogID}/categories/{categoryID} | 
[**list**](CategoryApi.md#list) | **GET** /catalogs/{catalogID}/categories | 
[**list_assignments**](CategoryApi.md#list_assignments) | **GET** /catalogs/{catalogID}/categories/assignments | 
[**list_product_assignments**](CategoryApi.md#list_product_assignments) | **GET** /catalogs/{catalogID}/categories/productassignments | 
[**patch**](CategoryApi.md#patch) | **PATCH** /catalogs/{catalogID}/categories/{categoryID} | 
[**save_assignment**](CategoryApi.md#save_assignment) | **POST** /catalogs/{catalogID}/categories/assignments | 
[**save_product_assignment**](CategoryApi.md#save_product_assignment) | **POST** /catalogs/{catalogID}/categories/productassignments | 
[**update**](CategoryApi.md#update) | **PUT** /catalogs/{catalogID}/categories/{categoryID} | 


# **create**
> Category create(catalog_id, category)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category = OrderCloud::Category.new # Category | 


begin
  result = api_instance.create(catalog_id, category)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete**
> delete(catalog_id, category_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_id = "category_id_example" # String | ID of the category.


begin
  api_instance.delete(catalog_id, category_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete_assignment**
> delete_assignment(catalog_id, category_id, buyer_id, opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_id = "category_id_example" # String | ID of the category.

buyer_id = "buyer_id_example" # String | ID of the buyer.

opts = { 
  user_id: "user_id_example", # String | ID of the user.
  user_group_id: "user_group_id_example" # String | ID of the user group.
}

begin
  api_instance.delete_assignment(catalog_id, category_id, buyer_id, opts)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->delete_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | 
 **buyer_id** | **String**| ID of the buyer. | 
 **user_id** | **String**| ID of the user. | [optional] 
 **user_group_id** | **String**| ID of the user group. | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete_product_assignment**
> delete_product_assignment(catalog_id, category_id, product_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_id = "category_id_example" # String | ID of the category.

product_id = "product_id_example" # String | ID of the product.


begin
  api_instance.delete_product_assignment(catalog_id, category_id, product_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->delete_product_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | 
 **product_id** | **String**| ID of the product. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **get**
> Category get(catalog_id, category_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_id = "category_id_example" # String | ID of the category.


begin
  result = api_instance.get(catalog_id, category_id)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | 

### Return type

[**Category**](Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list**
> ListCategory list(catalog_id, opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

opts = { 
  depth: "depth_example", # String | Depth of the category.
  search: "search_example", # String | Word or phrase to search for.
  search_on: "search_on_example", # String | Comma-delimited list of fields to search on.
  sort_by: "sort_by_example", # String | Comma-delimited list of fields to sort by.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56, # Integer | Number of results to return per page. Default: 20, max: 100.
  filters: {'key' => "filters_example"} # Hash<String, String> | Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or 'xp.???'
}

begin
  result = api_instance.list(catalog_id, opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **depth** | **String**| Depth of the category. | [optional] 
 **search** | **String**| Word or phrase to search for. | [optional] 
 **search_on** | **String**| Comma-delimited list of fields to search on. | [optional] 
 **sort_by** | **String**| Comma-delimited list of fields to sort by. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 
 **filters** | [**Hash&lt;String, String&gt;**](String.md)| Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39; | [optional] 

### Return type

[**ListCategory**](ListCategory.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list_assignments**
> ListCategoryAssignment list_assignments(catalog_id, opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

opts = { 
  category_id: "category_id_example", # String | ID of the category.
  buyer_id: "buyer_id_example", # String | ID of the buyer.
  user_id: "user_id_example", # String | ID of the user.
  user_group_id: "user_group_id_example", # String | ID of the user group.
  level: "level_example", # String | Level of the category.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56 # Integer | Number of results to return per page. Default: 20, max: 100.
}

begin
  result = api_instance.list_assignments(catalog_id, opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->list_assignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | [optional] 
 **buyer_id** | **String**| ID of the buyer. | [optional] 
 **user_id** | **String**| ID of the user. | [optional] 
 **user_group_id** | **String**| ID of the user group. | [optional] 
 **level** | **String**| Level of the category. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 

### Return type

[**ListCategoryAssignment**](ListCategoryAssignment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list_product_assignments**
> ListCategoryProductAssignment list_product_assignments(catalog_id, opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

opts = { 
  category_id: "category_id_example", # String | ID of the category.
  product_id: "product_id_example", # String | ID of the product.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56 # Integer | Number of results to return per page. Default: 20, max: 100.
}

begin
  result = api_instance.list_product_assignments(catalog_id, opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->list_product_assignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | [optional] 
 **product_id** | **String**| ID of the product. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 

### Return type

[**ListCategoryProductAssignment**](ListCategoryProductAssignment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **patch**
> Category patch(catalog_id, category_id, category)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_id = "category_id_example" # String | ID of the category.

category = OrderCloud::Category.new # Category | 


begin
  result = api_instance.patch(catalog_id, category_id, category)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | 
 **category** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **save_assignment**
> save_assignment(catalog_id, category_assignment)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_assignment = OrderCloud::CategoryAssignment.new # CategoryAssignment | 


begin
  api_instance.save_assignment(catalog_id, category_assignment)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->save_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_assignment** | [**CategoryAssignment**](CategoryAssignment.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **save_product_assignment**
> save_product_assignment(catalog_id, product_assignment)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

product_assignment = OrderCloud::CategoryProductAssignment.new # CategoryProductAssignment | 


begin
  api_instance.save_product_assignment(catalog_id, product_assignment)
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->save_product_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **product_assignment** | [**CategoryProductAssignment**](CategoryProductAssignment.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **update**
> Category update(catalog_id, category_id, category)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::CategoryApi.new

catalog_id = "catalog_id_example" # String | ID of the catalog.

category_id = "category_id_example" # String | ID of the category.

category = OrderCloud::Category.new # Category | 


begin
  result = api_instance.update(catalog_id, category_id, category)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling CategoryApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **String**| ID of the catalog. | 
 **category_id** | **String**| ID of the category. | 
 **category** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



