require 'json'
require 'equipment_list'
require 'equipment'
require 'alcatel_xml/btsequipment'
require 'alcatel_xml/rnc'

module AlcalteXML
  class Parser
    include Enumerable

    def initialize(file_path, result_type)
      xml = File.open(file_path)
      @result_type = result_type
      EquipmentList.new(xml, result_type)
    end

    def make_array collection
      collection.class == Saxerator::Builder::ArrayElement ? collection : Saxerator::Builder::ArrayElement.new([collection])
    end

    def serve(results)
      case @result_type
      when 'hash'
        Hash.from_xml(results)
      when 'json'
        Hash.from_xml(results).to_json
      else
        results
      end
    end

  end
end
