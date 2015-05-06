require 'roman_converter'

feature 'As an historian given a number convert this into a roman numeral' do
  given(:roman){RomanConverter.new}

  scenario 'Convert 1 into I' do
    expect(roman.convert_to_roman(1)).to eq 'I'
  end

  scenario 'Convert 3 to III' do
    expect(roman.convert_to_roman(3)).to eq 'III'
  end

  scenario 'Convert 9 to IX' do
    expect(roman.convert_to_roman(9)).to eq 'IX'
  end

  scenario 'Convert 39 to IX' do
    expect(roman.convert_to_roman(39)).to eq 'XXXIX'
  end
end