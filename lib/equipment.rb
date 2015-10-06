require 'alcatel_xml/btsequipment'
require 'alcatel_xml/rnc'

module AlcalteXML
  class Equipment < AlcalteXML::Parser

    def initialize bts_hash
      @raw_bts = bts_hash
    end

    def bts_equipment
      btss = make_array @raw_bts['BTSEquipment']

      btss.collect do |bts|
        serve(AlcalteXML::BTSReader.new bts)
      end
    end

    def rnc
      rncs = make_array @raw_bts['RNC']

      rncs.collect do |rnc|
        serve(AlcalteXML::RNC.new rnc)
      end
    end

    def operator
      serve(AlcalteXML::Operator @raw_bts['Operator'])
    end

    def cluster
      serve(AlcalteXML::cluster @raw_bts['Cluster'])
    end

  end
end
