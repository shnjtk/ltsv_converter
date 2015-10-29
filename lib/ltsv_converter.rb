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

  private

    def self.hash_to_ltsv(hash)
      ltsv = ""
      hash.each do |key, val|
        ltsv << key.to_s + ":" + val.to_s + "\t"
      end
      ltsv.chop # remove last tab
    end
end
