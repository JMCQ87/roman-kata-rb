require_relative '../lib/roman'

describe 'Roman Numerals conversion method' do

  it "should not attempt to convert out of range integers" do
    expect{ 0.to_roman_s }.to raise_error(OutOfRangeException)
    expect{ -1.to_roman_s }.to raise_error(OutOfRangeException)
    expect{ 4000.to_roman_s }.to raise_error(OutOfRangeException)
  end

  it "should correctly all integers represented by a single letter" do
    expect(1.to_roman_s).to eq("I")
    expect(5.to_roman_s).to eq("V")
    expect(10.to_roman_s).to eq("X")
    expect(50.to_roman_s).to eq("L")
    expect(100.to_roman_s).to eq("C")
    expect(500.to_roman_s).to eq("D")
    expect(1000.to_roman_s).to eq("M")
  end



end
