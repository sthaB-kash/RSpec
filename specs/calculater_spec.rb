require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  # subject(:calc) { described_class.new(25, 5) }

  # context '#add' do
  #   it 'should return sum' do
  #     expect(calc.add).to eq 30
  #   end
  # end

  before(:each) do
    @calc = described_class.new(25, 5)
  end

  context '#add' do
    it 'should return sum' do
      expect(@calc.add).to eq 30
    end
  end

  context '#subtract' do
    it 'should return difference' do
      expect(@calc.subtract).to eq 20
    end
  end

  context '#multiply' do
    it 'should return product' do
      expect(@calc.multiply).to eq 125
    end
  end

  context '#divide' do
    it 'should return quotient' do
      expect(@calc.divide).to eq 5
    end

    # it 'should return divide by zero' do
    #   calc = Calculator.new(3, 0)
    #   expect(calc.divide).to eq 'can not divide by zero'
    # end
  end

  context '#modulus' do
    it 'should return remainder' do
      expect(@calc.modulus).to eq 0

      calc = Calculator.new(5, 3)

      expect(calc.modulus).to eq 2
    end
  end

  context 'ZeroDivisionError' do
    it 'should raise ZeroDivisionError' do
      calc = Calculator.new(5, 0)
      expect { calc.divide }.to raise_error(ZeroDivisionError, 'divided by 0')

      expect { calc.modulus }.to raise_error(ZeroDivisionError, 'divided by 0')
    end
  end

  context 'Instantiation' do
    it 'should be an instance of Calculator' do
      expect(@calc).to be_an_instance_of(Calculator)
    end
  end
end
