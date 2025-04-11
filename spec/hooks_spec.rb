RSpec.configure do |config|
  config.before(:suite) do
    puts "before(:suite)"
  end

  config.after(:suite) do
    puts "after(:suite)"
  end
end

RSpec.describe "Exemplo de Hooks" do
  before(:all) do
    puts "before(:all)"
  end

  after(:all) do
    puts "after(:all)"
  end

  context "Contexto A" do
    before(:all) do
      puts "before(:all) - Contexto A"
    end

    after(:all) do
      puts "after(:all) - Contexto A"
    end

    before(:each) do
      puts "before(:each)"
    end

    after(:each) do
      puts "after(:each)"
    end

    it "executa teste 1" do
      puts "executando teste 1"
    end

    it "executa teste 2" do
      puts "executando teste 2"
    end
  end
end
