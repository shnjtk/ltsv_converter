require "ltsv_converter/version"

module LtsvConverter
  def self.to_ltsv(object)
    case object.class.to_s.downcase
    when "hash"
      hash_to_ltsv(object)
    else
      raise StandardError, "Converting #{object.class} to LTSV format is not supported yet."
    end
  end

  def self.to_hash(ltsv_str, delimiter=':', to_sym=true)
    raise StandardError, 'Invalid format.' unless ltsv_str.is_a? String

    hash = {}
    ltsv_str.split("\t").each do |elm|
      array = elm.partition(delimiter)
      if to_sym
        hash[array[0].to_sym] = array[2]
      else
        hash[array[0]] = array[2]
      end
    end
    hash
  end

  private

    def self.hash_to_ltsv(hash)
      ltsv = ""
      hash.each do |key, val|
        ltsv << key.to_s + ":" + val.to_s + "\t"
      end
      ltsv.chop # remove last tab
    end
end
