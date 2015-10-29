require 'spec_helper'

describe LtsvConverter do
  it 'has a version number' do
    expect(LtsvConverter::VERSION).not_to be nil
  end

  it 'should be able to convert a hash object to ltsv string' do
    title = 'test title'
    body  = 'test body.'
    hash = { title: title, body: body }
    ltsv = LtsvConverter.to_ltsv(hash)
    expect(ltsv).to eq "title:#{title}\tbody:#{body}"
  end
end
