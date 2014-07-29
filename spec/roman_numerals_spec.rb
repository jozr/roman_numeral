require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('returns Roman numerals for inputted Arabic numerals') do
    expect(roman_numerals(239)).to(eq('CCXXXIX'))
  end
end
