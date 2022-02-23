require './add.rb'

RSpec.describe Add do
  describe '#sum' do
    it 'returns sum' do
      add = Add.new(3, 6)
      expect(add.sum).to eq(9)
    end
  end
end