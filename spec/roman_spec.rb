require_relative '../lib/roman'

describe 'Roman Numerals conversion method' do
  it 'should not attempt to convert out of range integers' do
    expect { 0.to_roman_s } .to raise_error(OutOfRangeException)
    expect { -1.to_roman_s } .to raise_error(OutOfRangeException)
    expect { 4000.to_roman_s } .to raise_error(OutOfRangeException)
  end

  it 'should correctly convert integers represented by a single letter' do
    expect(1.to_roman_s).to eq('I')
    expect(5.to_roman_s).to eq('V')
    expect(10.to_roman_s).to eq('X')
    expect(50.to_roman_s).to eq('L')
    expect(100.to_roman_s).to eq('C')
    expect(500.to_roman_s).to eq('D')
    expect(1000.to_roman_s).to eq('M')
  end

  it 'should correctly convert integers with subtractive notation' do
    expect(4.to_roman_s).to eq('IV')
    expect(9.to_roman_s).to eq('IX')
    expect(40.to_roman_s).to eq('XL')
    expect(90.to_roman_s).to eq('XC')
    expect(400.to_roman_s).to eq('CD')
    expect(900.to_roman_s).to eq('CM')
  end

  it 'should correctly convert integers with a longer representation' do
    expect(24.to_roman_s).to eq('XXIV')
    expect(42.to_roman_s).to eq('XLII')
    expect(84.to_roman_s).to eq('LXXXIV')
    expect(1984.to_roman_s).to eq('MCMLXXXIV')
    expect(3999.to_roman_s).to eq('MMMCMXCIX')
  end
end
