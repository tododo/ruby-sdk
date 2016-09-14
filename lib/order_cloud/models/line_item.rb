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

require 'date'

module OrderCloud

  class LineItem
    attr_accessor :id

    attr_accessor :product_id

    attr_accessor :quantity

    attr_accessor :date_added

    attr_accessor :quantity_shipped

    attr_accessor :unit_price

    attr_accessor :line_total

    attr_accessor :cost_center

    attr_accessor :date_needed

    attr_accessor :shipping_account

    attr_accessor :shipping_address_id

    attr_accessor :shipping_address

    attr_accessor :ship_from_address_id

    attr_accessor :ship_from_address

    attr_accessor :specs

    attr_accessor :xp


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'product_id' => :'ProductID',
        :'quantity' => :'Quantity',
        :'date_added' => :'DateAdded',
        :'quantity_shipped' => :'QuantityShipped',
        :'unit_price' => :'UnitPrice',
        :'line_total' => :'LineTotal',
        :'cost_center' => :'CostCenter',
        :'date_needed' => :'DateNeeded',
        :'shipping_account' => :'ShippingAccount',
        :'shipping_address_id' => :'ShippingAddressID',
        :'shipping_address' => :'ShippingAddress',
        :'ship_from_address_id' => :'ShipFromAddressID',
        :'ship_from_address' => :'ShipFromAddress',
        :'specs' => :'Specs',
        :'xp' => :'xp'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'product_id' => :'String',
        :'quantity' => :'Integer',
        :'date_added' => :'String',
        :'quantity_shipped' => :'Integer',
        :'unit_price' => :'Float',
        :'line_total' => :'Float',
        :'cost_center' => :'String',
        :'date_needed' => :'String',
        :'shipping_account' => :'String',
        :'shipping_address_id' => :'String',
        :'shipping_address' => :'Address',
        :'ship_from_address_id' => :'String',
        :'ship_from_address' => :'Address',
        :'specs' => :'Array<LineItemSpec>',
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

      if attributes.has_key?(:'ProductID')
        self.product_id = attributes[:'ProductID']
      end

      if attributes.has_key?(:'Quantity')
        self.quantity = attributes[:'Quantity']
      end

      if attributes.has_key?(:'DateAdded')
        self.date_added = attributes[:'DateAdded']
      end

      if attributes.has_key?(:'QuantityShipped')
        self.quantity_shipped = attributes[:'QuantityShipped']
      end

      if attributes.has_key?(:'UnitPrice')
        self.unit_price = attributes[:'UnitPrice']
      end

      if attributes.has_key?(:'LineTotal')
        self.line_total = attributes[:'LineTotal']
      end

      if attributes.has_key?(:'CostCenter')
        self.cost_center = attributes[:'CostCenter']
      end

      if attributes.has_key?(:'DateNeeded')
        self.date_needed = attributes[:'DateNeeded']
      end

      if attributes.has_key?(:'ShippingAccount')
        self.shipping_account = attributes[:'ShippingAccount']
      end

      if attributes.has_key?(:'ShippingAddressID')
        self.shipping_address_id = attributes[:'ShippingAddressID']
      end

      if attributes.has_key?(:'ShippingAddress')
        self.shipping_address = attributes[:'ShippingAddress']
      end

      if attributes.has_key?(:'ShipFromAddressID')
        self.ship_from_address_id = attributes[:'ShipFromAddressID']
      end

      if attributes.has_key?(:'ShipFromAddress')
        self.ship_from_address = attributes[:'ShipFromAddress']
      end

      if attributes.has_key?(:'Specs')
        if (value = attributes[:'Specs']).is_a?(Array)
          self.specs = value
        end
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
          product_id == o.product_id &&
          quantity == o.quantity &&
          date_added == o.date_added &&
          quantity_shipped == o.quantity_shipped &&
          unit_price == o.unit_price &&
          line_total == o.line_total &&
          cost_center == o.cost_center &&
          date_needed == o.date_needed &&
          shipping_account == o.shipping_account &&
          shipping_address_id == o.shipping_address_id &&
          shipping_address == o.shipping_address &&
          ship_from_address_id == o.ship_from_address_id &&
          ship_from_address == o.ship_from_address &&
          specs == o.specs &&
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
      [id, product_id, quantity, date_added, quantity_shipped, unit_price, line_total, cost_center, date_needed, shipping_account, shipping_address_id, shipping_address, ship_from_address_id, ship_from_address, specs, xp].hash
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
