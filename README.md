# Descrição
Repositório criado para estudo do Rspec e suas funcionalidades

## Rspec

Rspec é uma gem utilizada para auxiliar a criação e validação de testes unitários e de integração em sistemas desenvolvidos com Ruby e Ruby on Rails

### Comandos

- `describe`: define um grupo de testes relacionados a uma classe, método ou comportamento específico, cria um escopo para os testes, ajudando na organização e leitura.
- `context`: funciona como `describe`, mas é geralmente usado para descrever diferentes condições ou cenários específicos dentro de um grupo de testes.
- `subject`: usado para definir o objeto principal do teste, pode ser criado de forma implícita (declarando a classe no `describe`) ou explícita (definindo manualmente o objeto)
- `described_class`: se refere automaticamente à classe que está sendo testada. Serve de atalho para a classe testada, evita a necessidade de repetir o nome da classe nos testes.
- `it`: define um caso de teste específico, cada `it` deve conter pelo menos um `expect` para verificar um comportamento esperado.
- `xit`: usado para **pular** (ou ignorar) um teste. Ele é equivalente a `it` mas desativa temporariamente o teste
- `expect`: define expectativas sobre o comportamento do código testado, verifica se um valor ou expressão retorna o resultado esperado.
- `is_expected`: é um atalho para `expect(subject)`.
- `let`: usado para criar variáveis temporárias para usar dentro dos teste.
- `let!`: usado para criar uma variável antes de cada teste, mesmo que ela não seja usada dentro do teste.
- `change`: verifica se alguma coisa mudou de valor depois que você executa uma ação.
- `aggregate_failures`: é uma funcionalidade que permite agrupar múltiplas expectativas (assertivas) dentro de um único exemplo (ou bloco `it`), sem que ele pare na primeira falha. Em vez disso, ele continua executando as outras expectativas e exibe todas as falhas ao final
- `shared_examples`: são uma forma de reutilizar blocos de testes em diferentes contexts, você escreve um conjunto de specs uma vez e usa em vários lugares.
- `double`: é um objeto de teste “falso”, que imita um objeto real, mas só responde aos métodos que você definir.
- `stub`: é quando você substitui temporariamente o comportamento de um método durante um teste. Em vez do método fazer o que ele realmente faria, ele vai retornar um valor que você definir.
- `mock`: é um tipo especial de double que espera que um método seja chamado durante o teste, enquanto o stub finge o valor de retorno de um método, o mock também finge o comportamento mas exige que a chamada aconteça.

### Matchers

- `equal / be`: ambos verificam **identidade de objeto** (se são o mesmo objeto na memória).
- `eql`: verifica conteúdo e tipo – se os objetos são equivalentes e do mesmo tipo.
- `eq`: verifica se os valores são "iguais", não se importa com o tipo, logo é mais flexível que `eql`
- `be_truthy`: verifica se o valor é avaliado como verdadeiro, qualquer coisa diferente de `false` ou `nil` é considerada `truthy`
- `be_falsey`: verifica se o valor é avaliado como falso, apenas `false` e `nil` são `falsey`
- `be_nil`: verifica se o valor testado é exatamente `nil`  ou seja, o valor nulo em Ruby
- `be_between`: usado para verificar se um valor está dentro de um intervalo, inclusive com a opção de incluir ou excluir os limites.
- `match`: usado para verificar se um valor satisfaz uma expressão regular  ou, em alguns casos, um padrão de estrutura.
- `start_with`: verifica se um valor **começa** com um determinado prefixo, funciona com `string`, `array`, `hash`.
- `end_with`: verifica se um valor **termina** com um determinado sufixo, funciona com `string`, `array`, `hash`.
- `be_instance_of`: verifica se o objeto é exatamente de uma determinada classe.
- `be_kind_of`: verifica se o objeto é de uma classe ou subclasse (considera herança).
- `respond_to`: verifica se o objeto responde a um método.
- `have_attributes`:  usado para verificar se um objeto tem certos atributos com valores esperados.
- `raise_exception / raise_error` : usado para testar se um erro (exceção) é lançado quando um determinado código é executado.
- `include`: usado para verificar se um objeto contém um ou mais elementos específicos, pode ser com `array`, `string`, `hash` e outros objetos que implementem o método `include?`.
- `match_array`: verifica se dois `arrays` contêm exatamente os mesmos elementos, independentemente da ordem.
- `contain_exactly`: verifica se o `array` contém exatamente os elementos esperados, sem considerar a ordem, mas compara argumentos separados, não como um `array`.
- `cover`:  usado para verificar se um `Range` cobre um ou mais valores.
- `and / or`: são `composite matchers`, você usa `.and` e `.or` para combinar dois (ou mais) `matchers` em uma só expectativa.
- `be_within`: verifica se um número está dentro de uma tolerância de um valor esperado.
- `satisfy`: aceita um bloco com a condição que deve ser verdadeira para o teste passar.

### Hooks

- `before(:suite) e after(:suite)`: executa um bloco de código antes e depois da `suite` (agrupamento de todos os testes `_spec.rb` existentes) ser executada.
- `before(:all) e after(:all) / before(:context) e after(:context)` : executa um bloco de código antes e depois de cada `context` presente em um arquivo de teste.
- `before(:each) e after(:each) / before(:example) e after(:example)`: executa um bloco de código antes e depois de cada `it` presente em um arquivo de teste.
