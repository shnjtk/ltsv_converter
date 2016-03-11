require 'spec_helper'

describe LtsvConverter do
  it 'has a version number' do
    expect(LtsvConverter::VERSION).not_to be nil
  end

  describe "::to_ltsv" do
    it 'should be able to convert a hash object to a ltsv string' do
      title = 'test title'
      body  = 'test body.'
      hash = { title: title, body: body }
      ltsv = LtsvConverter.to_ltsv(hash)
      expect(ltsv).to eq "title:#{title}\tbody:#{body}"
    end
  end


  describe "::to_hash" do
    it 'should be able to convert a ltsv string to a hash object' do
      title = 'test title'
      body  = 'test body.'
      ltsv_str = "title:#{title}\tbody:#{body}"
      hash = LtsvConverter.to_hash(ltsv_str)
      expect(hash).to eq({title: title, body: body})
    end
  end
end
