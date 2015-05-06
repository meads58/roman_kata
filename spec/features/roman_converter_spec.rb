require 'roman_converter'

describe RomanConverter do

  context 'converting a number 10 or less' do
     it 'takes 1 and returns I' do
      expect(subject.convert_to_roman(1)).to eq 'I'
    end

     it 'takes 2 and returns II' do
      expect(subject.convert_to_roman(2)).to eq 'II'
    end

     it 'takes 3 and returns III' do
      expect(subject.convert_to_roman(3)).to eq 'III'
    end

     it 'takes 4 and returns IV' do
      expect(subject.convert_to_roman(4)).to eq 'IV'
    end

    it 'takes 5 and returns V' do
      expect(subject.convert_to_roman(5)).to eq 'V'
    end

    it 'takes 6 and returns VI' do
      expect(subject.convert_to_roman(6)).to eq 'VI'
    end

    it 'takes 7 and returns VII' do
      expect(subject.convert_to_roman(7)).to eq 'VII'
    end

    it 'takes 8 and returns VIII' do
      expect(subject.convert_to_roman(8)).to eq 'VIII'
    end

    it 'takes 9 and returns IX' do
      expect(subject.convert_to_roman(9)).to eq 'IX'
    end

    it 'takes 10 and returns X' do
      roman = RomanConverter.new
      expect(roman.convert_to_roman(10)).to eq 'X'
    end
  end

  context 'Split number into an array of 1s and 10s' do
    it 'knows that 12 had two 1s and one 10' do
      subject.number_splitter(12)
      expect(subject.split_number).to match_array([2, 1]) do
    end
  end

  # context 'Selecting the correct hash mapping for ones, tens, hundreds, thousands' do
  #   it 'knows to use the ones hash table when the numbers index is 0' do

  #   end
  # end

  end

end