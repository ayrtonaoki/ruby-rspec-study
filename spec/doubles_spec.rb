describe 'Test Doubles' do
  context '#double e #stub' do
    it 'creates fake object and simulate method behavior' do
      tom = double('Cat')
      jerry = double('Mouse')

      allow(tom).to receive_messages(color: 'Grey', food: 'Milk')
      allow(jerry).to receive(:color).and_return('Brown')
      allow(jerry).to receive(:food).and_return('Cheese')

      expect(jerry.food).to eq('Cheese')
    end
  end

  context '#mocks' do
    it 'same of double and stub but require a method call' do
      dog = double('Dog')

      expect(dog).to receive(:bark)

      dog.bark
    end
  end
end
