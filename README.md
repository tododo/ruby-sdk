# order_cloud

## Introduction
OrderCloud gem is an SDK for OrderCloud's API written in Ruby. All of the methods for the most part are a 1:1 reflection of the API. This guide will cover how to install and get started with OrderCloud Ruby gem.
OrderCloud - the Ruby gem for the OrderCloud

## Acknowledgment

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0
- Package version: 0.0.4
- Build date: 2016-09-27T14:37:05.237-05:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

For more information, please visit [http://public.four51.com/](http://public.four51.com/)

## Requirements
- Ruby >= 2.3.0

## Installation

Add this line to your `Gemfile`:

    gem 'order_cloud', '~> 0.0.4'

Or run this in your terminal:
```shell
gem install order_cloud
```

## Configuration

You will need to provide the ClientID which identifies the Organization or Buyer Company you will be interacting with. The ClientID can be found in the application tab of your Dashboard. Check out this guide for more information. Once you have the ClientID you can configure it with the following function.

```ruby
# Load the gem
require 'order_cloud'

# Setup authorization
OrderCloud.configure do |config|
  config.client_id = 'MY_CLIENT_ID'
  config.scopes= ['MY_SCOPE']
end
```

## Authentication

```ruby
OrderCloud::ApiAuth::login('username', 'password')
```

## Impersonation

```ruby
user_instance = OrderCloud::UserApi.new
impersonation_token = user_instance.get_access_token(buyer_id, user_id, { :claims => ['YOUR_CLAIM'] })

OrderCloud::ApiAuth::start_impersonate(impersonation_token)
puts 'Impersonation status: #{ OrderCloud::Configuration.default.impersonating?}'

OrderCloud::ApiAuth::stop_impersonate
puts 'Impersonation status: #{ OrderCloud::Configuration.default.impersonating?}'
```

## Example
```ruby
api_instance = OrderCloud::ProductApi.new

begin
  result = api_instance.list
  p result
rescue OrderCloud::ApiError => e
  puts "Exception when calling ProductApi->list: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.ordercloud.io/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OrderCloud::AddressApi* | [**create**](docs/AddressApi.md#create) | **POST** /buyers/{buyerID}/addresses | 
*OrderCloud::AddressApi* | [**delete**](docs/AddressApi.md#delete) | **DELETE** /buyers/{buyerID}/addresses/{addressID} | 
*OrderCloud::AddressApi* | [**delete_assignment**](docs/AddressApi.md#delete_assignment) | **DELETE** /buyers/{buyerID}/addresses/{addressID}/assignments | 
*OrderCloud::AddressApi* | [**get**](docs/AddressApi.md#get) | **GET** /buyers/{buyerID}/addresses/{addressID} | 
*OrderCloud::AddressApi* | [**list**](docs/AddressApi.md#list) | **GET** /buyers/{buyerID}/addresses | 
*OrderCloud::AddressApi* | [**list_assignments**](docs/AddressApi.md#list_assignments) | **GET** /buyers/{buyerID}/addresses/assignments | 
*OrderCloud::AddressApi* | [**patch**](docs/AddressApi.md#patch) | **PATCH** /buyers/{buyerID}/addresses/{addressID} | 
*OrderCloud::AddressApi* | [**save_assignment**](docs/AddressApi.md#save_assignment) | **POST** /buyers/{buyerID}/addresses/assignments | 
*OrderCloud::AddressApi* | [**update**](docs/AddressApi.md#update) | **PUT** /buyers/{buyerID}/addresses/{addressID} | 
*OrderCloud::AdminAddressApi* | [**create**](docs/AdminAddressApi.md#create) | **POST** /addresses | 
*OrderCloud::AdminAddressApi* | [**delete**](docs/AdminAddressApi.md#delete) | **DELETE** /addresses/{addressID} | 
*OrderCloud::AdminAddressApi* | [**get**](docs/AdminAddressApi.md#get) | **GET** /addresses/{addressID} | 
*OrderCloud::AdminAddressApi* | [**list**](docs/AdminAddressApi.md#list) | **GET** /addresses | 
*OrderCloud::AdminAddressApi* | [**patch**](docs/AdminAddressApi.md#patch) | **PATCH** /addresses/{addressID} | 
*OrderCloud::AdminAddressApi* | [**update**](docs/AdminAddressApi.md#update) | **PUT** /addresses/{addressID} | 
*OrderCloud::AdminUserApi* | [**create**](docs/AdminUserApi.md#create) | **POST** /adminusers | 
*OrderCloud::AdminUserApi* | [**delete**](docs/AdminUserApi.md#delete) | **DELETE** /adminusers/{userID} | 
*OrderCloud::AdminUserApi* | [**get**](docs/AdminUserApi.md#get) | **GET** /adminusers/{userID} | 
*OrderCloud::AdminUserApi* | [**list**](docs/AdminUserApi.md#list) | **GET** /adminusers | 
*OrderCloud::AdminUserApi* | [**patch**](docs/AdminUserApi.md#patch) | **PATCH** /adminusers/{userID} | 
*OrderCloud::AdminUserApi* | [**update**](docs/AdminUserApi.md#update) | **PUT** /adminusers/{userID} | 
*OrderCloud::ApprovalRuleApi* | [**create**](docs/ApprovalRuleApi.md#create) | **POST** /buyers/{buyerID}/approvalrules | 
*OrderCloud::ApprovalRuleApi* | [**delete**](docs/ApprovalRuleApi.md#delete) | **DELETE** /buyers/{buyerID}/approvalrules/{approvalRuleID} | 
*OrderCloud::ApprovalRuleApi* | [**get**](docs/ApprovalRuleApi.md#get) | **GET** /buyers/{buyerID}/approvalrules/{approvalRuleID} | 
*OrderCloud::ApprovalRuleApi* | [**list**](docs/ApprovalRuleApi.md#list) | **GET** /buyers/{buyerID}/approvalrules | 
*OrderCloud::ApprovalRuleApi* | [**patch**](docs/ApprovalRuleApi.md#patch) | **PATCH** /buyers/{buyerID}/approvalrules/{approvalRuleID} | 
*OrderCloud::ApprovalRuleApi* | [**update**](docs/ApprovalRuleApi.md#update) | **PUT** /buyers/{buyerID}/approvalrules/{approvalRuleID} | 
*OrderCloud::BuyerApi* | [**create**](docs/BuyerApi.md#create) | **POST** /buyers | 
*OrderCloud::BuyerApi* | [**delete**](docs/BuyerApi.md#delete) | **DELETE** /buyers/{buyerID} | 
*OrderCloud::BuyerApi* | [**get**](docs/BuyerApi.md#get) | **GET** /buyers/{buyerID} | 
*OrderCloud::BuyerApi* | [**list**](docs/BuyerApi.md#list) | **GET** /buyers | 
*OrderCloud::BuyerApi* | [**patch**](docs/BuyerApi.md#patch) | **PATCH** /buyers/{buyerID} | 
*OrderCloud::BuyerApi* | [**update**](docs/BuyerApi.md#update) | **PUT** /buyers/{buyerID} | 
*OrderCloud::CategoryApi* | [**create**](docs/CategoryApi.md#create) | **POST** /buyers/{buyerID}/categories | 
*OrderCloud::CategoryApi* | [**delete**](docs/CategoryApi.md#delete) | **DELETE** /buyers/{buyerID}/categories/{categoryID} | 
*OrderCloud::CategoryApi* | [**delete_assignment**](docs/CategoryApi.md#delete_assignment) | **DELETE** /buyers/{buyerID}/categories/{categoryID}/assignments | 
*OrderCloud::CategoryApi* | [**delete_product_assignment**](docs/CategoryApi.md#delete_product_assignment) | **DELETE** /buyers/{buyerID}/categories/{categoryID}/productassignments/{productID} | 
*OrderCloud::CategoryApi* | [**get**](docs/CategoryApi.md#get) | **GET** /buyers/{buyerID}/categories/{categoryID} | 
*OrderCloud::CategoryApi* | [**list**](docs/CategoryApi.md#list) | **GET** /buyers/{buyerID}/categories | 
*OrderCloud::CategoryApi* | [**list_assignments**](docs/CategoryApi.md#list_assignments) | **GET** /buyers/{buyerID}/categories/assignments | 
*OrderCloud::CategoryApi* | [**list_product_assignments**](docs/CategoryApi.md#list_product_assignments) | **GET** /buyers/{buyerID}/categories/productassignments | 
*OrderCloud::CategoryApi* | [**patch**](docs/CategoryApi.md#patch) | **PATCH** /buyers/{buyerID}/categories/{categoryID} | 
*OrderCloud::CategoryApi* | [**save_assignment**](docs/CategoryApi.md#save_assignment) | **POST** /buyers/{buyerID}/categories/assignments | 
*OrderCloud::CategoryApi* | [**save_product_assignment**](docs/CategoryApi.md#save_product_assignment) | **POST** /buyers/{buyerID}/categories/productassignments | 
*OrderCloud::CategoryApi* | [**update**](docs/CategoryApi.md#update) | **PUT** /buyers/{buyerID}/categories/{categoryID} | 
*OrderCloud::CostCenterApi* | [**create**](docs/CostCenterApi.md#create) | **POST** /buyers/{buyerID}/costcenters | 
*OrderCloud::CostCenterApi* | [**delete**](docs/CostCenterApi.md#delete) | **DELETE** /buyers/{buyerID}/costcenters/{costCenterID} | 
*OrderCloud::CostCenterApi* | [**delete_assignment**](docs/CostCenterApi.md#delete_assignment) | **DELETE** /buyers/{buyerID}/costcenters/{costCenterID}/assignments | 
*OrderCloud::CostCenterApi* | [**get**](docs/CostCenterApi.md#get) | **GET** /buyers/{buyerID}/costcenters/{costCenterID} | 
*OrderCloud::CostCenterApi* | [**list**](docs/CostCenterApi.md#list) | **GET** /buyers/{buyerID}/costcenters | 
*OrderCloud::CostCenterApi* | [**list_assignments**](docs/CostCenterApi.md#list_assignments) | **GET** /buyers/{buyerID}/costcenters/assignments | 
*OrderCloud::CostCenterApi* | [**patch**](docs/CostCenterApi.md#patch) | **PATCH** /buyers/{buyerID}/costcenters/{costCenterID} | 
*OrderCloud::CostCenterApi* | [**save_assignment**](docs/CostCenterApi.md#save_assignment) | **POST** /buyers/{buyerID}/costcenters/assignments | 
*OrderCloud::CostCenterApi* | [**update**](docs/CostCenterApi.md#update) | **PUT** /buyers/{buyerID}/costcenters/{costCenterID} | 
*OrderCloud::CreditCardApi* | [**create**](docs/CreditCardApi.md#create) | **POST** /buyers/{buyerID}/creditcards | 
*OrderCloud::CreditCardApi* | [**delete**](docs/CreditCardApi.md#delete) | **DELETE** /buyers/{buyerID}/creditcards/{creditCardID} | 
*OrderCloud::CreditCardApi* | [**delete_assignment**](docs/CreditCardApi.md#delete_assignment) | **DELETE** /buyers/{buyerID}/creditcards/{creditCardID}/assignments | 
*OrderCloud::CreditCardApi* | [**get**](docs/CreditCardApi.md#get) | **GET** /buyers/{buyerID}/creditcards/{creditCardID} | 
*OrderCloud::CreditCardApi* | [**list**](docs/CreditCardApi.md#list) | **GET** /buyers/{buyerID}/creditcards | 
*OrderCloud::CreditCardApi* | [**list_assignments**](docs/CreditCardApi.md#list_assignments) | **GET** /buyers/{buyerID}/creditcards/assignments | 
*OrderCloud::CreditCardApi* | [**patch**](docs/CreditCardApi.md#patch) | **PATCH** /buyers/{buyerID}/creditcards/{creditCardID} | 
*OrderCloud::CreditCardApi* | [**save_assignment**](docs/CreditCardApi.md#save_assignment) | **POST** /buyers/{buyerID}/creditcards/assignments | 
*OrderCloud::CreditCardApi* | [**update**](docs/CreditCardApi.md#update) | **PUT** /buyers/{buyerID}/creditcards/{creditCardID} | 
*OrderCloud::EmailTemplateApi* | [**get**](docs/EmailTemplateApi.md#get) | **GET** /buyers/{buyerID}/emailtemplates/{emailTemplateType} | 
*OrderCloud::EmailTemplateApi* | [**patch**](docs/EmailTemplateApi.md#patch) | **PATCH** /buyers/{buyerID}/emailtemplates/{emailTemplateType} | 
*OrderCloud::EmailTemplateApi* | [**reset_to_default**](docs/EmailTemplateApi.md#reset_to_default) | **DELETE** /buyers/{buyerID}/emailtemplates/{emailTemplateType} | 
*OrderCloud::EmailTemplateApi* | [**update**](docs/EmailTemplateApi.md#update) | **PUT** /buyers/{buyerID}/emailtemplates/{emailTemplateType} | 
*OrderCloud::FileApi* | [**get**](docs/FileApi.md#get) | **GET** /files/{fileID} | 
*OrderCloud::FileApi* | [**list**](docs/FileApi.md#list) | **GET** /files | 
*OrderCloud::FileApi* | [**post_file_data**](docs/FileApi.md#post_file_data) | **POST** /files | 
*OrderCloud::LineItemApi* | [**create**](docs/LineItemApi.md#create) | **POST** /buyers/{buyerID}/orders/{orderID}/lineitems | 
*OrderCloud::LineItemApi* | [**delete**](docs/LineItemApi.md#delete) | **DELETE** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
*OrderCloud::LineItemApi* | [**get**](docs/LineItemApi.md#get) | **GET** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
*OrderCloud::LineItemApi* | [**list**](docs/LineItemApi.md#list) | **GET** /buyers/{buyerID}/orders/{orderID}/lineitems | 
*OrderCloud::LineItemApi* | [**patch**](docs/LineItemApi.md#patch) | **PATCH** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
*OrderCloud::LineItemApi* | [**patch_shipping_address**](docs/LineItemApi.md#patch_shipping_address) | **PATCH** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID}/shipto | 
*OrderCloud::LineItemApi* | [**set_shipping_address**](docs/LineItemApi.md#set_shipping_address) | **PUT** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID}/shipto | 
*OrderCloud::LineItemApi* | [**update**](docs/LineItemApi.md#update) | **PUT** /buyers/{buyerID}/orders/{orderID}/lineitems/{lineItemID} | 
*OrderCloud::MeApi* | [**create_address**](docs/MeApi.md#create_address) | **POST** /me/addresses | 
*OrderCloud::MeApi* | [**create_credit_card**](docs/MeApi.md#create_credit_card) | **POST** /me/creditcards | 
*OrderCloud::MeApi* | [**delete_address**](docs/MeApi.md#delete_address) | **DELETE** /me/addresses/{addressID} | 
*OrderCloud::MeApi* | [**delete_credit_card**](docs/MeApi.md#delete_credit_card) | **DELETE** /me/creditcards/{creditcardID} | 
*OrderCloud::MeApi* | [**get**](docs/MeApi.md#get) | **GET** /me | 
*OrderCloud::MeApi* | [**get_address**](docs/MeApi.md#get_address) | **GET** /me/addresses/{addressID} | 
*OrderCloud::MeApi* | [**get_credit_card**](docs/MeApi.md#get_credit_card) | **GET** /me/creditcards/{creditcardID} | 
*OrderCloud::MeApi* | [**get_order**](docs/MeApi.md#get_order) | **GET** /me/orders/{orderID} | 
*OrderCloud::MeApi* | [**get_product**](docs/MeApi.md#get_product) | **GET** /me/products/{productID} | 
*OrderCloud::MeApi* | [**get_promotion**](docs/MeApi.md#get_promotion) | **GET** /me/promotions/{promotionID} | 
*OrderCloud::MeApi* | [**get_spec**](docs/MeApi.md#get_spec) | **GET** /me/products/{productID}/specs/{specID} | 
*OrderCloud::MeApi* | [**list_addresses**](docs/MeApi.md#list_addresses) | **GET** /me/addresses | 
*OrderCloud::MeApi* | [**list_categories**](docs/MeApi.md#list_categories) | **GET** /me/categories | 
*OrderCloud::MeApi* | [**list_cost_centers**](docs/MeApi.md#list_cost_centers) | **GET** /me/costcenters | 
*OrderCloud::MeApi* | [**list_credit_cards**](docs/MeApi.md#list_credit_cards) | **GET** /me/creditcards | 
*OrderCloud::MeApi* | [**list_incoming_orders**](docs/MeApi.md#list_incoming_orders) | **GET** /me/orders/incoming | 
*OrderCloud::MeApi* | [**list_outgoing_orders**](docs/MeApi.md#list_outgoing_orders) | **GET** /me/orders/outgoing | 
*OrderCloud::MeApi* | [**list_products**](docs/MeApi.md#list_products) | **GET** /me/products | 
*OrderCloud::MeApi* | [**list_promotions**](docs/MeApi.md#list_promotions) | **GET** /me/promotions | 
*OrderCloud::MeApi* | [**list_specs**](docs/MeApi.md#list_specs) | **GET** /me/products/{productID}/specs | 
*OrderCloud::MeApi* | [**list_user_groups**](docs/MeApi.md#list_user_groups) | **GET** /me/usergroups | 
*OrderCloud::MeApi* | [**patch**](docs/MeApi.md#patch) | **PATCH** /me | 
*OrderCloud::MeApi* | [**patch_address**](docs/MeApi.md#patch_address) | **PATCH** /me/addresses/{addressID} | 
*OrderCloud::MeApi* | [**patch_credit_card**](docs/MeApi.md#patch_credit_card) | **PATCH** /me/creditcards/{creditcardID} | 
*OrderCloud::MeApi* | [**update**](docs/MeApi.md#update) | **PUT** /me | 
*OrderCloud::MeApi* | [**update_address**](docs/MeApi.md#update_address) | **PUT** /me/addresses/{addressID} | 
*OrderCloud::MeApi* | [**update_credit_card**](docs/MeApi.md#update_credit_card) | **PUT** /me/creditcards/{creditcardID} | 
*OrderCloud::OrderApi* | [**add_promotion**](docs/OrderApi.md#add_promotion) | **POST** /buyers/{buyerID}/orders/{orderID}/promotions/{promoCode} | 
*OrderCloud::OrderApi* | [**approve**](docs/OrderApi.md#approve) | **POST** /buyers/{buyerID}/orders/{orderID}/approve | 
*OrderCloud::OrderApi* | [**cancel**](docs/OrderApi.md#cancel) | **POST** /buyers/{buyerID}/orders/{orderID}/cancel | 
*OrderCloud::OrderApi* | [**create**](docs/OrderApi.md#create) | **POST** /buyers/{buyerID}/orders | 
*OrderCloud::OrderApi* | [**decline**](docs/OrderApi.md#decline) | **POST** /buyers/{buyerID}/orders/{orderID}/decline | 
*OrderCloud::OrderApi* | [**delete**](docs/OrderApi.md#delete) | **DELETE** /buyers/{buyerID}/orders/{orderID} | 
*OrderCloud::OrderApi* | [**get**](docs/OrderApi.md#get) | **GET** /buyers/{buyerID}/orders/{orderID} | 
*OrderCloud::OrderApi* | [**list_approvals**](docs/OrderApi.md#list_approvals) | **GET** /buyers/{buyerID}/orders/{orderID}/approvals | 
*OrderCloud::OrderApi* | [**list_eligible_approvers**](docs/OrderApi.md#list_eligible_approvers) | **GET** /buyers/{buyerID}/orders/{orderID}/eligibleapprovers | 
*OrderCloud::OrderApi* | [**list_incoming**](docs/OrderApi.md#list_incoming) | **GET** /orders/incoming | 
*OrderCloud::OrderApi* | [**list_outgoing**](docs/OrderApi.md#list_outgoing) | **GET** /orders/outgoing | 
*OrderCloud::OrderApi* | [**list_promotions**](docs/OrderApi.md#list_promotions) | **GET** /buyers/{buyerID}/orders/{orderID}/promotions | 
*OrderCloud::OrderApi* | [**patch**](docs/OrderApi.md#patch) | **PATCH** /buyers/{buyerID}/orders/{orderID} | 
*OrderCloud::OrderApi* | [**patch_billing_address**](docs/OrderApi.md#patch_billing_address) | **PATCH** /buyers/{buyerID}/orders/{orderID}/billto | 
*OrderCloud::OrderApi* | [**patch_shipping_address**](docs/OrderApi.md#patch_shipping_address) | **PATCH** /buyers/{buyerID}/orders/{orderID}/shipto | 
*OrderCloud::OrderApi* | [**remove_promotion**](docs/OrderApi.md#remove_promotion) | **DELETE** /buyers/{buyerID}/orders/{orderID}/promotions/{promoCode} | 
*OrderCloud::OrderApi* | [**set_billing_address**](docs/OrderApi.md#set_billing_address) | **PUT** /buyers/{buyerID}/orders/{orderID}/billto | 
*OrderCloud::OrderApi* | [**set_shipping_address**](docs/OrderApi.md#set_shipping_address) | **PUT** /buyers/{buyerID}/orders/{orderID}/shipto | 
*OrderCloud::OrderApi* | [**ship**](docs/OrderApi.md#ship) | **POST** /buyers/{buyerID}/orders/{orderID}/ship | 
*OrderCloud::OrderApi* | [**submit**](docs/OrderApi.md#submit) | **POST** /buyers/{buyerID}/orders/{orderID}/submit | 
*OrderCloud::OrderApi* | [**transfer_temp_user_order**](docs/OrderApi.md#transfer_temp_user_order) | **PUT** /buyers/{buyerID}/orders | 
*OrderCloud::OrderApi* | [**update**](docs/OrderApi.md#update) | **PUT** /buyers/{buyerID}/orders/{orderID} | 
*OrderCloud::PasswordResetApi* | [**reset_password**](docs/PasswordResetApi.md#reset_password) | **PUT** /password/reset/{verificationCode} | 
*OrderCloud::PasswordResetApi* | [**send_verification_code**](docs/PasswordResetApi.md#send_verification_code) | **POST** /password/reset | 
*OrderCloud::PaymentApi* | [**create**](docs/PaymentApi.md#create) | **POST** /buyers/{buyerID}/orders/{orderID}/payments | 
*OrderCloud::PaymentApi* | [**create_transaction**](docs/PaymentApi.md#create_transaction) | **POST** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions | 
*OrderCloud::PaymentApi* | [**delete**](docs/PaymentApi.md#delete) | **DELETE** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID} | 
*OrderCloud::PaymentApi* | [**delete_transaction**](docs/PaymentApi.md#delete_transaction) | **DELETE** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions/{transactionID} | 
*OrderCloud::PaymentApi* | [**get**](docs/PaymentApi.md#get) | **GET** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID} | 
*OrderCloud::PaymentApi* | [**list**](docs/PaymentApi.md#list) | **GET** /buyers/{buyerID}/orders/{orderID}/payments | 
*OrderCloud::PaymentApi* | [**patch**](docs/PaymentApi.md#patch) | **PATCH** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID} | 
*OrderCloud::PaymentApi* | [**patch_transaction**](docs/PaymentApi.md#patch_transaction) | **PATCH** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions/{transactionID} | 
*OrderCloud::PaymentApi* | [**update**](docs/PaymentApi.md#update) | **PUT** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID} | 
*OrderCloud::PaymentApi* | [**update_transaction**](docs/PaymentApi.md#update_transaction) | **PUT** /buyers/{buyerID}/orders/{orderID}/payments/{paymentID}/transactions/{transactionID} | 
*OrderCloud::PriceScheduleApi* | [**create**](docs/PriceScheduleApi.md#create) | **POST** /priceschedules | 
*OrderCloud::PriceScheduleApi* | [**delete**](docs/PriceScheduleApi.md#delete) | **DELETE** /priceschedules/{priceScheduleID} | 
*OrderCloud::PriceScheduleApi* | [**delete_price_break**](docs/PriceScheduleApi.md#delete_price_break) | **DELETE** /priceschedules/{priceScheduleID}/PriceBreaks | 
*OrderCloud::PriceScheduleApi* | [**get**](docs/PriceScheduleApi.md#get) | **GET** /priceschedules/{priceScheduleID} | 
*OrderCloud::PriceScheduleApi* | [**list**](docs/PriceScheduleApi.md#list) | **GET** /priceschedules | 
*OrderCloud::PriceScheduleApi* | [**patch**](docs/PriceScheduleApi.md#patch) | **PATCH** /priceschedules/{priceScheduleID} | 
*OrderCloud::PriceScheduleApi* | [**save_price_break**](docs/PriceScheduleApi.md#save_price_break) | **POST** /priceschedules/{priceScheduleID}/PriceBreaks | 
*OrderCloud::PriceScheduleApi* | [**update**](docs/PriceScheduleApi.md#update) | **PUT** /priceschedules/{priceScheduleID} | 
*OrderCloud::ProductApi* | [**create**](docs/ProductApi.md#create) | **POST** /products | 
*OrderCloud::ProductApi* | [**delete**](docs/ProductApi.md#delete) | **DELETE** /products/{productID} | 
*OrderCloud::ProductApi* | [**delete_assignment**](docs/ProductApi.md#delete_assignment) | **DELETE** /products/{productID}/assignments/{buyerID} | 
*OrderCloud::ProductApi* | [**generate_variants**](docs/ProductApi.md#generate_variants) | **POST** /products/{productID}/variants/generate | 
*OrderCloud::ProductApi* | [**get**](docs/ProductApi.md#get) | **GET** /products/{productID} | 
*OrderCloud::ProductApi* | [**get_inventory**](docs/ProductApi.md#get_inventory) | **GET** /products/{productID}/inventory | 
*OrderCloud::ProductApi* | [**get_variant**](docs/ProductApi.md#get_variant) | **GET** /products/{productID}/variants/{variantID} | 
*OrderCloud::ProductApi* | [**get_variant_inventory**](docs/ProductApi.md#get_variant_inventory) | **GET** /products/{productID}/variants/inventory/{variantID} | 
*OrderCloud::ProductApi* | [**list**](docs/ProductApi.md#list) | **GET** /products | 
*OrderCloud::ProductApi* | [**list_assignments**](docs/ProductApi.md#list_assignments) | **GET** /products/assignments | 
*OrderCloud::ProductApi* | [**list_inventory**](docs/ProductApi.md#list_inventory) | **GET** /products/inventory | 
*OrderCloud::ProductApi* | [**list_variant_inventory**](docs/ProductApi.md#list_variant_inventory) | **GET** /products/{productID}/variants/inventory | 
*OrderCloud::ProductApi* | [**list_variants**](docs/ProductApi.md#list_variants) | **GET** /products/{productID}/variants | 
*OrderCloud::ProductApi* | [**patch**](docs/ProductApi.md#patch) | **PATCH** /products/{productID} | 
*OrderCloud::ProductApi* | [**patch_variant**](docs/ProductApi.md#patch_variant) | **PATCH** /products/{productID}/variants/{variantID} | 
*OrderCloud::ProductApi* | [**save_assignment**](docs/ProductApi.md#save_assignment) | **POST** /products/assignments | 
*OrderCloud::ProductApi* | [**update**](docs/ProductApi.md#update) | **PUT** /products/{productID} | 
*OrderCloud::ProductApi* | [**update_inventory**](docs/ProductApi.md#update_inventory) | **PUT** /products/{productID}/inventory/{inventory} | 
*OrderCloud::ProductApi* | [**update_variant**](docs/ProductApi.md#update_variant) | **PUT** /products/{productID}/variants/{variantID} | 
*OrderCloud::ProductApi* | [**update_variant_inventory**](docs/ProductApi.md#update_variant_inventory) | **PUT** /products/{productID}/variants/inventory/{variantID}/{inventory} | 
*OrderCloud::PromotionApi* | [**create**](docs/PromotionApi.md#create) | **POST** /promotions | 
*OrderCloud::PromotionApi* | [**delete**](docs/PromotionApi.md#delete) | **DELETE** /promotions/{promotionID} | 
*OrderCloud::PromotionApi* | [**delete_assignment**](docs/PromotionApi.md#delete_assignment) | **DELETE** /promotions/{promotionID}/assignments | 
*OrderCloud::PromotionApi* | [**get**](docs/PromotionApi.md#get) | **GET** /promotions/{promotionID} | 
*OrderCloud::PromotionApi* | [**list**](docs/PromotionApi.md#list) | **GET** /promotions | 
*OrderCloud::PromotionApi* | [**list_assignments**](docs/PromotionApi.md#list_assignments) | **GET** /promotions/assignments | 
*OrderCloud::PromotionApi* | [**patch**](docs/PromotionApi.md#patch) | **PATCH** /promotions/{promotionID} | 
*OrderCloud::PromotionApi* | [**save_assignment**](docs/PromotionApi.md#save_assignment) | **POST** /promotions/assignments | 
*OrderCloud::PromotionApi* | [**update**](docs/PromotionApi.md#update) | **PUT** /promotions/{promotionID} | 
*OrderCloud::SecurityProfileApi* | [**delete_assignment**](docs/SecurityProfileApi.md#delete_assignment) | **DELETE** /SecurityProfiles/{securityProfileID}/assignments | 
*OrderCloud::SecurityProfileApi* | [**get**](docs/SecurityProfileApi.md#get) | **GET** /SecurityProfiles/{securityProfileID} | 
*OrderCloud::SecurityProfileApi* | [**list**](docs/SecurityProfileApi.md#list) | **GET** /SecurityProfiles | 
*OrderCloud::SecurityProfileApi* | [**list_assignments**](docs/SecurityProfileApi.md#list_assignments) | **GET** /SecurityProfiles/assignments | 
*OrderCloud::SecurityProfileApi* | [**save_assignment**](docs/SecurityProfileApi.md#save_assignment) | **POST** /SecurityProfiles/assignments | 
*OrderCloud::ShipmentApi* | [**create**](docs/ShipmentApi.md#create) | **POST** /buyers/{buyerID}/shipments | 
*OrderCloud::ShipmentApi* | [**delete**](docs/ShipmentApi.md#delete) | **DELETE** /buyers/{buyerID}/shipments/{shipmentID} | 
*OrderCloud::ShipmentApi* | [**delete_item**](docs/ShipmentApi.md#delete_item) | **DELETE** /buyers/{buyerID}/shipments/{shipmentID}/items/{orderID}/{lineItemID} | 
*OrderCloud::ShipmentApi* | [**get**](docs/ShipmentApi.md#get) | **GET** /buyers/{buyerID}/shipments/{shipmentID} | 
*OrderCloud::ShipmentApi* | [**list**](docs/ShipmentApi.md#list) | **GET** /buyers/{buyerID}/shipments | 
*OrderCloud::ShipmentApi* | [**patch**](docs/ShipmentApi.md#patch) | **PATCH** /buyers/{buyerID}/shipments/{shipmentID} | 
*OrderCloud::ShipmentApi* | [**save_item**](docs/ShipmentApi.md#save_item) | **POST** /buyers/{buyerID}/shipments/{shipmentID}/items | 
*OrderCloud::ShipmentApi* | [**update**](docs/ShipmentApi.md#update) | **PUT** /buyers/{buyerID}/shipments/{shipmentID} | 
*OrderCloud::SpecApi* | [**create**](docs/SpecApi.md#create) | **POST** /specs | 
*OrderCloud::SpecApi* | [**create_option**](docs/SpecApi.md#create_option) | **POST** /specs/{specID}/options | 
*OrderCloud::SpecApi* | [**delete**](docs/SpecApi.md#delete) | **DELETE** /specs/{specID} | 
*OrderCloud::SpecApi* | [**delete_option**](docs/SpecApi.md#delete_option) | **DELETE** /specs/{specID}/options/{optionID} | 
*OrderCloud::SpecApi* | [**delete_product_assignment**](docs/SpecApi.md#delete_product_assignment) | **DELETE** /specs/{specID}/productassignments/{productID} | 
*OrderCloud::SpecApi* | [**get**](docs/SpecApi.md#get) | **GET** /specs/{specID} | 
*OrderCloud::SpecApi* | [**get_option**](docs/SpecApi.md#get_option) | **GET** /specs/{specID}/options/{optionID} | 
*OrderCloud::SpecApi* | [**list**](docs/SpecApi.md#list) | **GET** /specs | 
*OrderCloud::SpecApi* | [**list_options**](docs/SpecApi.md#list_options) | **GET** /specs/{specID}/options | 
*OrderCloud::SpecApi* | [**list_product_assignments**](docs/SpecApi.md#list_product_assignments) | **GET** /specs/productassignments | 
*OrderCloud::SpecApi* | [**patch**](docs/SpecApi.md#patch) | **PATCH** /specs/{specID} | 
*OrderCloud::SpecApi* | [**patch_option**](docs/SpecApi.md#patch_option) | **PATCH** /specs/{specID}/options/{optionID} | 
*OrderCloud::SpecApi* | [**save_product_assignment**](docs/SpecApi.md#save_product_assignment) | **POST** /specs/productassignments | 
*OrderCloud::SpecApi* | [**update**](docs/SpecApi.md#update) | **PUT** /specs/{specID} | 
*OrderCloud::SpecApi* | [**update_option**](docs/SpecApi.md#update_option) | **PUT** /specs/{specID}/options/{optionID} | 
*OrderCloud::SpendingAccountApi* | [**create**](docs/SpendingAccountApi.md#create) | **POST** /buyers/{buyerID}/spendingaccounts | 
*OrderCloud::SpendingAccountApi* | [**delete**](docs/SpendingAccountApi.md#delete) | **DELETE** /buyers/{buyerID}/spendingaccounts/{spendingAccountID} | 
*OrderCloud::SpendingAccountApi* | [**delete_assignment**](docs/SpendingAccountApi.md#delete_assignment) | **DELETE** /buyers/{buyerID}/spendingaccounts/{spendingAccountID}/assignments | 
*OrderCloud::SpendingAccountApi* | [**get**](docs/SpendingAccountApi.md#get) | **GET** /buyers/{buyerID}/spendingaccounts/{spendingAccountID} | 
*OrderCloud::SpendingAccountApi* | [**list**](docs/SpendingAccountApi.md#list) | **GET** /buyers/{buyerID}/spendingaccounts | 
*OrderCloud::SpendingAccountApi* | [**list_assignments**](docs/SpendingAccountApi.md#list_assignments) | **GET** /buyers/{buyerID}/spendingaccounts/assignments | 
*OrderCloud::SpendingAccountApi* | [**patch**](docs/SpendingAccountApi.md#patch) | **PATCH** /buyers/{buyerID}/spendingaccounts/{spendingAccountID} | 
*OrderCloud::SpendingAccountApi* | [**save_assignment**](docs/SpendingAccountApi.md#save_assignment) | **POST** /buyers/{buyerID}/spendingaccounts/assignments | 
*OrderCloud::SpendingAccountApi* | [**update**](docs/SpendingAccountApi.md#update) | **PUT** /buyers/{buyerID}/spendingaccounts/{spendingAccountID} | 
*OrderCloud::UserApi* | [**create**](docs/UserApi.md#create) | **POST** /buyers/{buyerID}/users | 
*OrderCloud::UserApi* | [**delete**](docs/UserApi.md#delete) | **DELETE** /buyers/{buyerID}/users/{userID} | 
*OrderCloud::UserApi* | [**get**](docs/UserApi.md#get) | **GET** /buyers/{buyerID}/users/{userID} | 
*OrderCloud::UserApi* | [**get_access_token**](docs/UserApi.md#get_access_token) | **POST** /buyers/{buyerID}/users/{userID}/accesstoken | 
*OrderCloud::UserApi* | [**list**](docs/UserApi.md#list) | **GET** /buyers/{buyerID}/users | 
*OrderCloud::UserApi* | [**patch**](docs/UserApi.md#patch) | **PATCH** /buyers/{buyerID}/users/{userID} | 
*OrderCloud::UserApi* | [**update**](docs/UserApi.md#update) | **PUT** /buyers/{buyerID}/users/{userID} | 
*OrderCloud::UserGroupApi* | [**create**](docs/UserGroupApi.md#create) | **POST** /buyers/{buyerID}/usergroups | 
*OrderCloud::UserGroupApi* | [**delete**](docs/UserGroupApi.md#delete) | **DELETE** /buyers/{buyerID}/usergroups/{userGroupID} | 
*OrderCloud::UserGroupApi* | [**delete_user_assignment**](docs/UserGroupApi.md#delete_user_assignment) | **DELETE** /buyers/{buyerID}/usergroups/{userGroupID}/assignments/{userID} | 
*OrderCloud::UserGroupApi* | [**get**](docs/UserGroupApi.md#get) | **GET** /buyers/{buyerID}/usergroups/{userGroupID} | 
*OrderCloud::UserGroupApi* | [**list**](docs/UserGroupApi.md#list) | **GET** /buyers/{buyerID}/usergroups | 
*OrderCloud::UserGroupApi* | [**list_user_assignments**](docs/UserGroupApi.md#list_user_assignments) | **GET** /buyers/{buyerID}/usergroups/assignments | 
*OrderCloud::UserGroupApi* | [**patch**](docs/UserGroupApi.md#patch) | **PATCH** /buyers/{buyerID}/usergroups/{userGroupID} | 
*OrderCloud::UserGroupApi* | [**save_user_assignment**](docs/UserGroupApi.md#save_user_assignment) | **POST** /buyers/{buyerID}/usergroups/assignments | 
*OrderCloud::UserGroupApi* | [**update**](docs/UserGroupApi.md#update) | **PUT** /buyers/{buyerID}/usergroups/{userGroupID} | 


## Documentation for Models

 - [OrderCloud::AccessToken](docs/AccessToken.md)
 - [OrderCloud::Address](docs/Address.md)
 - [OrderCloud::AddressAssignment](docs/AddressAssignment.md)
 - [OrderCloud::AdminCompany](docs/AdminCompany.md)
 - [OrderCloud::AdminModelOnView](docs/AdminModelOnView.md)
 - [OrderCloud::ApprovalRule](docs/ApprovalRule.md)
 - [OrderCloud::BaseSpec](docs/BaseSpec.md)
 - [OrderCloud::Buyer](docs/Buyer.md)
 - [OrderCloud::BuyerAddress](docs/BuyerAddress.md)
 - [OrderCloud::BuyerCreditCard](docs/BuyerCreditCard.md)
 - [OrderCloud::BuyerProduct](docs/BuyerProduct.md)
 - [OrderCloud::BuyerSpec](docs/BuyerSpec.md)
 - [OrderCloud::Category](docs/Category.md)
 - [OrderCloud::CategoryAssignment](docs/CategoryAssignment.md)
 - [OrderCloud::CategoryProductAssignment](docs/CategoryProductAssignment.md)
 - [OrderCloud::CostCenter](docs/CostCenter.md)
 - [OrderCloud::CostCenterAssignment](docs/CostCenterAssignment.md)
 - [OrderCloud::CreditCard](docs/CreditCard.md)
 - [OrderCloud::CreditCardAssignment](docs/CreditCardAssignment.md)
 - [OrderCloud::EmailTemplate](docs/EmailTemplate.md)
 - [OrderCloud::File](docs/File.md)
 - [OrderCloud::ImpersonateTokenRequest](docs/ImpersonateTokenRequest.md)
 - [OrderCloud::Inventory](docs/Inventory.md)
 - [OrderCloud::LineItem](docs/LineItem.md)
 - [OrderCloud::LineItemSpec](docs/LineItemSpec.md)
 - [OrderCloud::ListAddress](docs/ListAddress.md)
 - [OrderCloud::ListAddressAssignment](docs/ListAddressAssignment.md)
 - [OrderCloud::ListAdminCompany](docs/ListAdminCompany.md)
 - [OrderCloud::ListApiClient](docs/ListApiClient.md)
 - [OrderCloud::ListApprovalRule](docs/ListApprovalRule.md)
 - [OrderCloud::ListBuyer](docs/ListBuyer.md)
 - [OrderCloud::ListBuyerAddress](docs/ListBuyerAddress.md)
 - [OrderCloud::ListBuyerCreditCard](docs/ListBuyerCreditCard.md)
 - [OrderCloud::ListBuyerProduct](docs/ListBuyerProduct.md)
 - [OrderCloud::ListBuyerSpec](docs/ListBuyerSpec.md)
 - [OrderCloud::ListCategory](docs/ListCategory.md)
 - [OrderCloud::ListCategoryAssignment](docs/ListCategoryAssignment.md)
 - [OrderCloud::ListCategoryProductAssignment](docs/ListCategoryProductAssignment.md)
 - [OrderCloud::ListCostCenter](docs/ListCostCenter.md)
 - [OrderCloud::ListCostCenterAssignment](docs/ListCostCenterAssignment.md)
 - [OrderCloud::ListCreditCard](docs/ListCreditCard.md)
 - [OrderCloud::ListCreditCardAssignment](docs/ListCreditCardAssignment.md)
 - [OrderCloud::ListDevAccessibleCompany](docs/ListDevAccessibleCompany.md)
 - [OrderCloud::ListFile](docs/ListFile.md)
 - [OrderCloud::ListInventory](docs/ListInventory.md)
 - [OrderCloud::ListLineItem](docs/ListLineItem.md)
 - [OrderCloud::ListOrder](docs/ListOrder.md)
 - [OrderCloud::ListOrderApproval](docs/ListOrderApproval.md)
 - [OrderCloud::ListOrderPromotion](docs/ListOrderPromotion.md)
 - [OrderCloud::ListPayment](docs/ListPayment.md)
 - [OrderCloud::ListPriceSchedule](docs/ListPriceSchedule.md)
 - [OrderCloud::ListProduct](docs/ListProduct.md)
 - [OrderCloud::ListProductAssignment](docs/ListProductAssignment.md)
 - [OrderCloud::ListPromotion](docs/ListPromotion.md)
 - [OrderCloud::ListPromotionAssignment](docs/ListPromotionAssignment.md)
 - [OrderCloud::ListSecurityProfile](docs/ListSecurityProfile.md)
 - [OrderCloud::ListSecurityProfileAssignment](docs/ListSecurityProfileAssignment.md)
 - [OrderCloud::ListShipment](docs/ListShipment.md)
 - [OrderCloud::ListSpec](docs/ListSpec.md)
 - [OrderCloud::ListSpecOption](docs/ListSpecOption.md)
 - [OrderCloud::ListSpecProductAssignment](docs/ListSpecProductAssignment.md)
 - [OrderCloud::ListSpendingAccount](docs/ListSpendingAccount.md)
 - [OrderCloud::ListSpendingAccountAssignment](docs/ListSpendingAccountAssignment.md)
 - [OrderCloud::ListUser](docs/ListUser.md)
 - [OrderCloud::ListUserGroup](docs/ListUserGroup.md)
 - [OrderCloud::ListUserGroupAssignment](docs/ListUserGroupAssignment.md)
 - [OrderCloud::ListVariant](docs/ListVariant.md)
 - [OrderCloud::ListWebHook](docs/ListWebHook.md)
 - [OrderCloud::ListWebHookRoute](docs/ListWebHookRoute.md)
 - [OrderCloud::ListXpIndex](docs/ListXpIndex.md)
 - [OrderCloud::Meta](docs/Meta.md)
 - [OrderCloud::Order](docs/Order.md)
 - [OrderCloud::OrderApproval](docs/OrderApproval.md)
 - [OrderCloud::OrderPromotion](docs/OrderPromotion.md)
 - [OrderCloud::PasswordReset](docs/PasswordReset.md)
 - [OrderCloud::PasswordResetRequest](docs/PasswordResetRequest.md)
 - [OrderCloud::Payment](docs/Payment.md)
 - [OrderCloud::PaymentTransaction](docs/PaymentTransaction.md)
 - [OrderCloud::PingResponse](docs/PingResponse.md)
 - [OrderCloud::PriceBreak](docs/PriceBreak.md)
 - [OrderCloud::PriceSchedule](docs/PriceSchedule.md)
 - [OrderCloud::Product](docs/Product.md)
 - [OrderCloud::ProductAssignment](docs/ProductAssignment.md)
 - [OrderCloud::Promotion](docs/Promotion.md)
 - [OrderCloud::PromotionAssignment](docs/PromotionAssignment.md)
 - [OrderCloud::SecurityProfile](docs/SecurityProfile.md)
 - [OrderCloud::SecurityProfileAssignment](docs/SecurityProfileAssignment.md)
 - [OrderCloud::Shipment](docs/Shipment.md)
 - [OrderCloud::ShipmentItem](docs/ShipmentItem.md)
 - [OrderCloud::Spec](docs/Spec.md)
 - [OrderCloud::SpecOption](docs/SpecOption.md)
 - [OrderCloud::SpecProductAssignment](docs/SpecProductAssignment.md)
 - [OrderCloud::SpendingAccount](docs/SpendingAccount.md)
 - [OrderCloud::SpendingAccountAssignment](docs/SpendingAccountAssignment.md)
 - [OrderCloud::User](docs/User.md)
 - [OrderCloud::UserGroup](docs/UserGroup.md)
 - [OrderCloud::UserGroupAssignment](docs/UserGroupAssignment.md)
 - [OrderCloud::Variant](docs/Variant.md)
 - [OrderCloud::WebHook](docs/WebHook.md)
 - [OrderCloud::WebHookRoute](docs/WebHookRoute.md)
 - [OrderCloud::XpIndex](docs/XpIndex.md)


## Documentation for Authorization


### oauth2

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: 
  - AddressAdmin: 
  - AddressReader: 
  - ApprovalRuleAdmin: 
  - ApprovalRuleReader: 
  - BuyerAdmin: 
  - BuyerReader: 
  - BuyerUserAdmin: 
  - BuyerUserReader: 
  - CategoryAdmin: 
  - CategoryReader: 
  - CostCenterAdmin: 
  - CostCenterReader: 
  - CreditCardAdmin: 
  - CreditCardReader: 
  - DevCenter: 
  - DevCenterImpersonate: 
  - DevCenterPasswordReset: 
  - EmailTemplateAdmin: 
  - EmailTemplateReader: 
  - FullAccess: 
  - GrantForAnyRole: 
  - InventoryAdmin: 
  - MeAddressAdmin: 
  - MeAdmin: 
  - MeCreditCardAdmin: 
  - MeXpAdmin: 
  - OrderAdmin: 
  - OrderReader: 
  - OverrideShipping: 
  - OverrideTax: 
  - OverrideUnitPrice: 
  - PermissionAdmin: 
  - PriceScheduleAdmin: 
  - PriceScheduleReader: 
  - ProductAdmin: 
  - ProductAssignmentAdmin: 
  - ProductReader: 
  - PromotionAdmin: 
  - PromotionReader: 
  - SpendingAccountAdmin: 
  - SpendingAccountReader: 
  - UnsubmittedOrderReader: 
  - UserGroupAdmin: 
  - UserGroupReader: 

