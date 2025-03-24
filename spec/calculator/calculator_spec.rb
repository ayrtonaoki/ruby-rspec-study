require 'calculator'

describe Calculator do
  it 'sum 2 numbers' do
    calculator = Calculator.new
    result = calculator.sum(10, 10)

    expect(result).to eq(20)
  end

  it 'sum positive and negative numbers' do
    calculator = Calculator.new
    result = calculator.sum(-8, 10)

    expect(result).to eq(2)
  end
end
