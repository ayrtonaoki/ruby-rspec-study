require 'calculator'

describe Calculator do
  context '#sum' do
    context 'with positive numbers' do
      it 'sum the numbers' do
        calculator = Calculator.new
        result = calculator.sum(10, 10)

        expect(result).to eq(20)
      end
    end

    context 'with positive and negative numbers' do
      it 'sum the numbers' do
        calculator = Calculator.new
        result = calculator.sum(-8, 10)

        expect(result).to eq(2)
      end
    end

    context 'with negative numbers' do
      it 'sum the numbers' do
        calculator = Calculator.new
        result = calculator.sum(-10, -10)

        expect(result).to eq(-20)
      end
    end
  end
end
