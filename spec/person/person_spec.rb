require 'person'

describe Person, "Class that represents a person" do
  subject(:person) { Person.new('Ayrton', 29) }

  context '#say_hi' do
    it 'returns string with the passed value' do
      response = subject.say_hi('John')

      expect(response).to eq("Hi John, my name is Ayrton and I have 29 years old")
    end
  end
end
