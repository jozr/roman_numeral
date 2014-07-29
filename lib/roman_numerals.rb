def roman_numerals(input)

  library = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I'}
  result = []
  input_counter = input

  while input_counter >0
    library.each do |arabic, roman|
      if input_counter > 0
        if arabic <= input_counter
          input_counter -= arabic
          result << roman
          break
        end
      end
    end
  end
  result = result.join('').gsub('DCCCC', 'CM').gsub('CCCC', 'CD').gsub('LXXXX', 'XC').gsub('XXXX', 'XL').gsub('VIIII', 'IX').gsub('IIII','IV')
  p result
end


roman_numerals(239)
