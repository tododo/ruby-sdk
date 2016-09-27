# OrderCloud::AdminUserGroupApi

All URIs are relative to *https://api.ordercloud.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](AdminUserGroupApi.md#create) | **POST** /usergroups | 
[**delete**](AdminUserGroupApi.md#delete) | **DELETE** /usergroups/{userGroupID} | 
[**delete_user_assignment**](AdminUserGroupApi.md#delete_user_assignment) | **DELETE** /usergroups/{userGroupID}/assignments/{userID} | 
[**get**](AdminUserGroupApi.md#get) | **GET** /usergroups/{userGroupID} | 
[**list**](AdminUserGroupApi.md#list) | **GET** /usergroups | 
[**list_user_assignments**](AdminUserGroupApi.md#list_user_assignments) | **GET** /usergroups/assignments | 
[**patch**](AdminUserGroupApi.md#patch) | **PATCH** /usergroups/{userGroupID} | 
[**save_user_assignment**](AdminUserGroupApi.md#save_user_assignment) | **POST** /usergroups/assignments | 
[**update**](AdminUserGroupApi.md#update) | **PUT** /usergroups/{userGroupID} | 


# **create**
> UserGroup create(group)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

group = OrderCloud::UserGroup.new # UserGroup | 


begin
  result = api_instance.create(group)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | [**UserGroup**](UserGroup.md)|  | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete**
> delete(user_group_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

user_group_id = "user_group_id_example" # String | ID of the user group.


begin
  api_instance.delete(user_group_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**| ID of the user group. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **delete_user_assignment**
> delete_user_assignment(user_group_id, user_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

user_group_id = "user_group_id_example" # String | ID of the user group.

user_id = "user_id_example" # String | ID of the user.


begin
  api_instance.delete_user_assignment(user_group_id, user_id)
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->delete_user_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**| ID of the user group. | 
 **user_id** | **String**| ID of the user. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **get**
> UserGroup get(user_group_id)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

user_group_id = "user_group_id_example" # String | ID of the user group.


begin
  result = api_instance.get(user_group_id)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**| ID of the user group. | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list**
> ListUserGroup list(opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

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
  puts "Exception when calling AdminUserGroupApi->list: #{e}"
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

[**ListUserGroup**](ListUserGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **list_user_assignments**
> ListUserGroupAssignment list_user_assignments(opts)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

opts = { 
  user_group_id: "user_group_id_example", # String | ID of the user group.
  user_id: "user_id_example", # String | ID of the user.
  page: 56, # Integer | Page of results to return. Default: 1
  page_size: 56 # Integer | Number of results to return per page. Default: 20, max: 100.
}

begin
  result = api_instance.list_user_assignments(opts)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->list_user_assignments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**| ID of the user group. | [optional] 
 **user_id** | **String**| ID of the user. | [optional] 
 **page** | **Integer**| Page of results to return. Default: 1 | [optional] 
 **page_size** | **Integer**| Number of results to return per page. Default: 20, max: 100. | [optional] 

### Return type

[**ListUserGroupAssignment**](ListUserGroupAssignment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **patch**
> UserGroup patch(user_group_id, group)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

user_group_id = "user_group_id_example" # String | ID of the user group.

group = OrderCloud::UserGroup.new # UserGroup | 


begin
  result = api_instance.patch(user_group_id, group)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**| ID of the user group. | 
 **group** | [**UserGroup**](UserGroup.md)|  | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **save_user_assignment**
> save_user_assignment(user_group_assignment)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

user_group_assignment = OrderCloud::UserGroupAssignment.new # UserGroupAssignment | 


begin
  api_instance.save_user_assignment(user_group_assignment)
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->save_user_assignment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_assignment** | [**UserGroupAssignment**](UserGroupAssignment.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



# **update**
> UserGroup update(user_group_id, group)



### Example
```ruby
# load the gem
require 'order_cloud'
# setup authorization
OrderCloud.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OrderCloud::AdminUserGroupApi.new

user_group_id = "user_group_id_example" # String | ID of the user group.

group = OrderCloud::UserGroup.new # UserGroup | 


begin
  result = api_instance.update(user_group_id, group)
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling AdminUserGroupApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group_id** | **String**| ID of the user group. | 
 **group** | [**UserGroup**](UserGroup.md)|  | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/plain; charset=utf-8
 - **Accept**: application/json



