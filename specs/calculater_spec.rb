require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  subject(:calc) { described_class.new(25, 5) }
  context '#add' do
    it 'should return sum' do
      expect(calc.add).to eq 30
    end
  end

  context '#subtract' do
    it 'should return difference' do
      expect(calc.subtract).to eq 20
    end
  end

  context '#multiply' do
    it 'should return product' do
      expect(calc.multiply).to eq 125
    end 
  end

  context '#division' do
    it 'should return quotient' do
      expect(calc.divide).to eq 5
    end

    it 'should return divide by zero' do
      calc = Calculator.new(3, 0)
      expect(calc.divide).to eq 'can not divide by zero'
    end
  end
end