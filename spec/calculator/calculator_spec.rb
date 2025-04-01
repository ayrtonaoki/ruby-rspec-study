require 'calculator'

describe Calculator, "Class that sum numbers" do
  subject(:calc) { described_class.new }

  context '#sum' do
    context 'with positive numbers' do
      it 'sum the numbers' do
        result = subject.sum(10, 10)

        expect(result).to eq(20)
      end

      xit 'wip test' do
		     expect(result).to eq(999)
      end
    end

    context 'with positive and negative numbers' do
      it 'sum the numbers' do
        result = subject.sum(-8, 10)

        expect(result).to eq(2)
      end
    end

    context 'with negative numbers' do
      it 'sum the numbers' do
        result = subject.sum(-10, -10)

        expect(result).to eq(-20)
      end
    end
  end
end
