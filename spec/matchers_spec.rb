describe 'Matchers' do
  context '#equal and #be (object identity)' do
    it 'uses equal to compare objects' do
      a = 'hello'
      b = 'hello'
      c = a

      expect(a).to equal(c)
      expect(a).not_to equal(b)
    end

    it 'uses be as a shortcut for equal' do
      x = [1, 2, 3]
      y = [1, 2, 3]
      z = x

      expect(x).to be(z)
      expect(x).not_to be(y)
    end
  end

  context '#eql (value + type)' do
    it 'compares integers and floats' do
      expect(1).not_to eql(1.0)
      expect(1).to eql(1)
    end

    it 'compares strings' do
      a = "ruby"
      b = "ruby"
      c = :ruby.to_s

      expect(a).to eql(b)
      expect(a).to eql(c)
    end

    it 'fails with different types' do
      expect("1").not_to eql(1)
    end
  end

  context '#eq (value)' do
    it 'compares integers and floats' do
      expect(1).to eq(1.0)
    end

    it 'compares strings with the same content' do
      a = "ruby"
      b = "ruby"

      expect(a).to eq(b)
    end

    it 'compares arrays with the same values' do
      x = [1, 2, 3]
      y = [1, 2, 3]

      expect(x).to eq(y)
    end

    it 'does not pass with different values' do
      expect(5).not_to eq(10)
    end
  end

  context '#be_truthy' do
    it 'checks truthy values' do
      expect(1.odd?).to be_truthy
      expect(2.odd?).not_to be true
      expect([]).to be_truthy
    end
  end

  context '#be_falsey' do
    it 'checks falsey values' do
      expect(1.even?).to be_falsey
      expect(2.even?).not_to be false
      expect(nil).to be_falsey
    end
  end

  context '#be_nil' do
    it 'checks nil values' do
      nil_var = nil

      expect(nil).to be_nil
      expect('hello').not_to be_nil
      expect(nil_var).to be nil
    end
  end
end
