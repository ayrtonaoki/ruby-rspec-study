require 'person'

describe 'Matchers' do
  context '#equal / #be (object identity)' do
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

  context '#be_between' do
    it 'checks inclusive range' do
      expect(5).to be_between(1, 5).inclusive
      expect(1).to be_between(1, 5).inclusive
      expect(3).to be_between(1, 5).inclusive
    end

    it 'checks exclusive range' do
      expect(3).to be_between(1, 5).exclusive
      expect(1).not_to be_between(1, 5).exclusive
      expect(5).not_to be_between(1, 5).exclusive
    end
  end

  context '#match' do
    it 'matches a string with a regex' do
      expect("hello world").to match(/world/)
      expect("version 3.0").to match(/version \d/)
      expect("abc123").not_to match(/xyz/)
    end
  end

  context '#start_with' do
    it 'checks if a value starts with a given prefix' do
      expect("RSpec is great").to start_with("RSpec")
      expect([1, 2, 3]).to start_with(1)
      expect([:a, :b, :c]).to start_with(:a, :b)
    end
  end

  context '#end_with' do
    it 'checks if a value ends with a given suffix' do
      expect("RSpec is great").to end_with("great")
      expect([1, 2, 3]).to end_with(3)
      expect([:a, :b, :c]).to end_with(:b, :c)
    end
  end

  context '#be_instance_of' do
    it 'checks if the object is exactly of a given class' do
      expect("hello").to be_instance_of(String)
      expect("hello").not_to be_instance_of(Object)
    end
  end

  context '#be_kind_of / #be_an / #be_a' do
    it 'checks if the object is of a class or subclass (considers inheritance)' do
      expect("hello").to be_kind_of(String)
      expect("hello").to be_kind_of(Object)   # String < Object
      expect(1).to be_an(Integer)
      expect(:hello).to be_a(Symbol)
    end
  end

  context '#respond_to' do
    it 'checks if the object responds to a method' do
      expect("hello").to respond_to(:length)
      expect("hello").to respond_to(:upcase)
      expect("hello").not_to respond_to(:non_existent_method)
    end
  end

  context '#have_attributes' do
    it 'checks if the object has correct attributes' do
      person = Person.new('John', 30)

      expect(person).to have_attributes(name: 'John', age: 30)
    end
  end

  context '#raise_exception / #raise_error' do
    it 'checks if some test have raised an error' do
      person = Person.new('John', 0)

      expect { person.divide_numbers(5, 0) }.to raise_exception(ZeroDivisionError)
      expect { person.divide_numbers(5, 0) }.to raise_error("divided by 0")
      expect { person.divide_numbers(5, 0) }.to raise_error(ZeroDivisionError, "divided by 0")
    end
  end
end
