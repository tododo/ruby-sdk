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

require 'spec_helper'
require 'json'

# Unit tests for OrderCloud::BuyerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BuyerApi' do
  before do
    # run before each test
    @instance = OrderCloud::BuyerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BuyerApi' do
    it 'should create an instact of BuyerApi' do
      expect(@instance).to be_instance_of(OrderCloud::BuyerApi)
    end
  end

  # unit tests for create
  # 
  # 
  # @param company 
  # @param [Hash] opts the optional parameters
  # @return [Buyer]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param [Hash] opts the optional parameters
  # @return [Buyer]
  describe 'get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Word or phrase to search for.
  # @option opts [String] :search_on Comma-delimited list of fields to search on.
  # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
  # @option opts [Integer] :page Page of results to return. Default: 1
  # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
  # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
  # @return [ListBuyer]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param company 
  # @param [Hash] opts the optional parameters
  # @return [Buyer]
  describe 'patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param company 
  # @param [Hash] opts the optional parameters
  # @return [Buyer]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
