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
end
