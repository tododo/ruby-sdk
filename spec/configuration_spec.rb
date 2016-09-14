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

describe OrderCloud::Configuration do
  let(:config) { OrderCloud::Configuration.default }
  let(:impersonation_token) { 'sI3PGLztu7HXfLoHobb9' }
  let(:access_token) { 'HteOBUPWe7ccTSpQKLVC' }
  
  before(:each) do
    OrderCloud::Configuration.reset
    require 'URI'
    uri = URI.parse("https://api.ordercloud.io/v1")
    OrderCloud.configure do |c|
      c.host = uri.host
      c.base_path = uri.path
    end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("https://api.ordercloud.io/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("https://api.ordercloud.io/v1")
      end
    end
  end
  
  describe '#get_access_token' do
    it 'returns the access_token if not impersonating' do
      config.access_token = access_token
      expect(config.get_access_token).to be(access_token)
    end

    it 'returns the impersonation token' do
      config.access_token = access_token
      config.impersonation_token = impersonation_token
      expect(config.get_access_token).to be(impersonation_token)
    end
  end


  describe '#impersonation' do
    it 'should be false when no impersonation token is set' do
      expect(config.impersonating?).to be_falsey
    end

    it 'should be true when impersonation token is set' do
      config.impersonation_token = impersonation_token
      expect(config.impersonating?).to be_truthy
    end
  end
end