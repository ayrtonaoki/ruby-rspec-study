require 'person'

describe Person, "Class that represents a person" do
  subject(:person) { Person.new('Ayrton', 29) }

  context '#say_hi' do
    it { is_expected.to have_attributes(name: 'Ayrton', age: 29) }

    it 'returns string with the passed value' do
      response = subject.say_hi('John')

      expect(response).to eq("Hi John, my name is Ayrton and I have 29 years old")
    end
  end

  context 'dog age' do
    let(:dog_age) { subject.age / 7 }

    it 'returns person age divided by 7' do
      expect(dog_age).to eq(4)
    end
  end
end
