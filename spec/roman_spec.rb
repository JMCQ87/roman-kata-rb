require_relative '../lib/roman'

describe 'Roman Numerals conversion method' do

  it "should not attempt to convert out of range integers" do
    expect{ 0.to_roman_s }.to raise_error
    expect{ -1.to_roman_s }.to raise_error
    expect{ 4000.to_roman_s }.to raise_error
  end


end
