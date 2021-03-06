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

require 'date'

module OrderCloud

  class Address
    attr_accessor :id

    attr_accessor :company_name

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :street1

    attr_accessor :street2

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip

    attr_accessor :country

    attr_accessor :phone

    attr_accessor :address_name

    attr_accessor :xp


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'company_name' => :'CompanyName',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'street1' => :'Street1',
        :'street2' => :'Street2',
        :'city' => :'City',
        :'state' => :'State',
        :'zip' => :'Zip',
        :'country' => :'Country',
        :'phone' => :'Phone',
        :'address_name' => :'AddressName',
        :'xp' => :'xp'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'company_name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'street1' => :'String',
        :'street2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'country' => :'String',
        :'phone' => :'String',
        :'address_name' => :'String',
        :'xp' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ID')
        self.id = attributes[:'ID']
      end

      if attributes.has_key?(:'CompanyName')
        self.company_name = attributes[:'CompanyName']
      end

      if attributes.has_key?(:'FirstName')
        self.first_name = attributes[:'FirstName']
      end

      if attributes.has_key?(:'LastName')
        self.last_name = attributes[:'LastName']
      end

      if attributes.has_key?(:'Street1')
        self.street1 = attributes[:'Street1']
      end

      if attributes.has_key?(:'Street2')
        self.street2 = attributes[:'Street2']
      end

      if attributes.has_key?(:'City')
        self.city = attributes[:'City']
      end

      if attributes.has_key?(:'State')
        self.state = attributes[:'State']
      end

      if attributes.has_key?(:'Zip')
        self.zip = attributes[:'Zip']
      end

      if attributes.has_key?(:'Country')
        self.country = attributes[:'Country']
      end

      if attributes.has_key?(:'Phone')
        self.phone = attributes[:'Phone']
      end

      if attributes.has_key?(:'AddressName')
        self.address_name = attributes[:'AddressName']
      end

      if attributes.has_key?(:'xp')
        self.xp = attributes[:'xp']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          company_name == o.company_name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          street1 == o.street1 &&
          street2 == o.street2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          country == o.country &&
          phone == o.phone &&
          address_name == o.address_name &&
          xp == o.xp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, company_name, first_name, last_name, street1, street2, city, state, zip, country, phone, address_name, xp].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = OrderCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
