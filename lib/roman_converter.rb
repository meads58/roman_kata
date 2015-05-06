class RomanConverter

  attr_reader :roman_numeral, :split_number

  def initialize
    @ones = {1 => 'I', 5 => 'V'}
    @tens = {1 => 'X', 5 => 'L'}
    @hundreds = {1 => 'C', 5 => 'D'}
    @thousands = {1 => 'M'}
    @split_number = []
    @roman_numeral = []
    @roman_mapper = { 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX', 10 => 'X'}
  end

  def convert_to_roman number
    number_splitter number
    @split_number.each_with_index do |num, index|
      rules(num, index)
    end
    # @roman_numeral = roman_numeral.join
    @roman_numeral.join
  end

  def number_splitter number
    @split_number = number.to_s.chars.map(&:to_i).reverse
  end

  def rules num, index
    case index
    when 0
      roman_builder(num, @ones)
    when 1
      roman_builder(num, @tens)
    end
  end

  def roman_builder num, mapping
    if num < 4 then
      num.times { @roman_numeral.push(mapping[1]) }
    end
  end

end

# 1 to 3
# 4
# 5 to 8
# 9


# 25 = XXV

# 99

# IX
# XC



# :I = 1
# :V = 5
# :X = 10
# :L = 50
# :C = 100
# :D = 500
# :M = 1000