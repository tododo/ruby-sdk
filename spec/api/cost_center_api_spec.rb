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

require 'spec_helper'
require 'json'

# Unit tests for OrderCloud::CostCenterApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CostCenterApi' do
  before do
    # run before each test
    @instance = OrderCloud::CostCenterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CostCenterApi' do
    it 'should create an instact of CostCenterApi' do
      expect(@instance).to be_instance_of(OrderCloud::CostCenterApi)
    end
  end

  # unit tests for create
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param cost_center 
  # @param [Hash] opts the optional parameters
  # @return [CostCenter]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param cost_center_id ID of the cost center.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_assignment
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param cost_center_id ID of the cost center.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_id ID of the user.
  # @option opts [String] :user_group_id ID of the user group.
  # @return [nil]
  describe 'delete_assignment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param cost_center_id ID of the cost center.
  # @param [Hash] opts the optional parameters
  # @return [CostCenter]
  describe 'get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Word or phrase to search for.
  # @option opts [String] :search_on Comma-delimited list of fields to search on.
  # @option opts [String] :sort_by Comma-delimited list of fields to sort by.
  # @option opts [Integer] :page Page of results to return. Default: 1
  # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
  # @option opts [Hash<String, String>] :filters Any additional key/value pairs passed in the query string are interpretted as filters. Valid keys are top-level properties of the returned model or &#39;xp.???&#39;
  # @return [ListCostCenter]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_assignments
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cost_center_id ID of the cost center.
  # @option opts [String] :user_id ID of the user.
  # @option opts [String] :user_group_id ID of the user group.
  # @option opts [String] :level Level of the cost center.
  # @option opts [Integer] :page Page of results to return. Default: 1
  # @option opts [Integer] :page_size Number of results to return per page. Default: 20, max: 100.
  # @return [ListCostCenterAssignment]
  describe 'list_assignments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param cost_center_id ID of the cost center.
  # @param cost_center 
  # @param [Hash] opts the optional parameters
  # @return [CostCenter]
  describe 'patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for save_assignment
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param assignment 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'save_assignment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # 
  # 
  # @param buyer_id ID of the buyer.
  # @param cost_center_id ID of the cost center.
  # @param cost_center 
  # @param [Hash] opts the optional parameters
  # @return [CostCenter]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
