require 'alcatel_xml/version'
require 'saxerator'

module AlcalteXML
  class EquipmentList < AlcalteXML::Parser

    def initialize(file)
      @raw_data = Saxerator.parser(file) do |config|
        config.put_attributes_in_hash!
      end
    end

  end
end
