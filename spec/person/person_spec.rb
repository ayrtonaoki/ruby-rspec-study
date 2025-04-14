require 'person'

describe Person, "Class that represents a person" do
  subject(:person) { Person.new('Ayrton', 29) }

  context 'Person class method #say_hi' do
    it { is_expected.to have_attributes(name: 'Ayrton', age: 29) }

    it 'returns string with the passed value' do
      response = subject.say_hi('John')

      expect(response).to eq("Hi John, my name is Ayrton and I have 29 years old")
    end
  end

  context '#let' do
    let(:dog_age) { subject.age / 7 }

    it 'returns person age divided by 7' do
      expect(dog_age).to eq(4)
    end
  end

  context '#change' do
    it 'checks if something has changed in value' do
      expect{ person.height_grow }.to change{ person.height }
      expect{ person.birthday }.to change{ person.age }.by(1)
      expect{ person.birthday }.to change{ person.age }.from(30).to(31)
    end
  end

  # context '#aggregate_failures' do
  #   it 'execute all tests and show all errors together', :aggregate_failures do
  #     expect(5*1).to eq(5)
  #     expect(5*2).to eq(15)
  #     expect(5*3).to eq(10)
  #     expect(5*4).to eq(20)
  #   end
  # end
end
