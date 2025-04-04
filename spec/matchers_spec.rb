describe 'Matchers' do
  context '#equal e #be (identidade de objeto)' do
    it 'usa equal para comparar objetos' do
      a = 'hello'
      b = 'hello'
      c = a

      expect(a).to equal(c)
      expect(a).not_to equal(b)
    end

    it 'usa be como atalho para equal' do
      x = [1, 2, 3]
      y = [1, 2, 3]
      z = x

      expect(x).to be(z)
      expect(x).not_to be(y)
    end
  end

  context '#eql (valor + tipo)' do
    it "compara inteiros e floats" do
      expect(1).not_to eql(1.0)
      expect(1).to eql(1)
    end

    it "compara strings" do
      a = "ruby"
      b = "ruby"
      c = :ruby.to_s

      expect(a).to eql(b)
      expect(a).to eql(c)
    end

    it "falha com tipos diferentes" do
      expect("1").not_to eql(1)
    end
  end

  context '#eq (valor)' do
    it "compara inteiros e floats" do
      expect(1).to eq(1.0)
    end

    it "compara strings com o mesmo conteúdo" do
      a = "ruby"
      b = "ruby"

      expect(a).to eq(b)
    end

    it "compara arrays com os mesmos valores" do
      x = [1, 2, 3]
      y = [1, 2, 3]

      expect(x).to eq(y)
    end

    it "não passa com valores diferentes" do
      expect(5).not_to eq(10)
    end
  end
end
