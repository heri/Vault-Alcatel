module AlcalteXML
  class Btsequipment < AlcalteXML::Parser

    def initialize bts_hash
      @raw_bts = bts_hash
    end

    def vcc
      vccs = make_array @raw_bts['VCC']

      vccs.collect do |vcc|
        serve (AlcalteXML::Antenna.new vcc)
      end
    end

    def pcm
      pcms = make_array @raw_bts['PCM']
      pcms.collect do |pcm|
        serve (AlcalteXML::Pcm.new pcm)
      end
    end

    def antenna_access
      antennas = make_array @raw_bts['AntenaAccess']

      antennas.collect do |ant|
        serve (AlcalteXML::Antenna.new ant)
      end

    end

    def remote_radio_head
      remotes = make_array @raw_bts['RemoteRadioHead']
      remotes.collect do |remote|
        serve (AlcalteXML::Remote_radio.new ant)
      end
    end

    def bts_cells
      cells = make_array @raw_bts['BTSCell']
      cells.collect do |cell|
        serve (AlcalteXML::Cell.new cell)
      end
    end

  end
end
