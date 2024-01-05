void main() {
  
  
  /*
  Conceitos Avançados de Funções em Dart:

  - Funções Arrow:
    - São uma forma concisa de escrever funções em Dart.
    - Úteis para funções que consistem em uma única expressão.
    - A expressão após a seta '=>' é retornada pela função.
    - Exemplo: int soma(int a, int b) => a + b;

  - Funções Anônimas:
    - São funções sem nome, definidas diretamente onde são usadas.
    - Comumente usadas para callbacks e operações em coleções.
    - Podem ser definidas inline e frequentemente utilizadas em operações de lista como forEach, map, etc.
    - Exemplo: lista.forEach((item) { print(item); });

  - Typedef em Funções:
    - Typedef é usado para definir um apelido para tipos de função.
    - Melhora a legibilidade do código, especialmente para funções complexas.
    - Útil para callbacks e quando se trabalha com funções de ordem superior.
    - Exemplo: typedef OperacaoMatematica = int Function(int a, int b);

  Observações:
  - Esses conceitos são fundamentais para escrever código Dart limpo e eficiente.
  - Funções Arrow e Anônimas oferecem uma maneira flexível e concisa de trabalhar com funções.
  - Typedef ajuda a organizar e gerenciar tipos de função, tornando o código mais claro e fácil de manter.
*/
  
  
  
  //Funções Arrow, ou "funções de seta", são uma sintaxe concisa para escrever funções em Dart. Elas são úteis para funções que contêm apenas uma única expressão. A expressão à direita da seta => é o que a função retorna
  // Exemplo de função arrow. Uma maneira concisa de definir funções que retornam uma única expressão.
  print(somaInteiroArrow(2, 2));

  //Funções anônimas, como o nome sugere, são funções sem nome. São especialmente úteis em coleções e widgets Flutter. Elas são frequentemente usadas para callbacks ou configurações de parâmetros que exigem uma função.
  // Demonstração de função anônima. Aqui, ela é usada com forEach para imprimir cada número em uma lista.
  var numeros = [1, 2, 3];
  numeros.forEach((numero) {
    print(numero);
  });

  // Exemplo de função anônima sendo passada como argumento para outra função.
  print('iniciando chamada');
  chamarFuncaoDeUmParametro((nome) => {
        if (nome.isEmpty) {print('Nome veio vazio')} else {print(nome)}
      });
  print('finalizando chamada');

  //Funções anônimas, como o nome sugere, são funções sem nome. São especialmente úteis em coleções e widgets Flutter. Elas são frequentemente usadas para callbacks ou configurações de parâmetros que exigem uma função
}

// Função comum que soma dois inteiros. É um exemplo de função com parâmetros e retorno.
int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

// Função arrow que simplifica a função somaInteiros. Usada quando a função tem apenas uma linha.
int somaInteiroArrow(num1, int num2) => num1 + num2;

// Exemplo de função que recebe outra função como parâmetro. Esta abordagem é útil para callbacks e funções de ordem superior.
void chamarFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Thiago Freitas';

  funcaoQueRecebeONome(nomeCompleto);
}

// Typedefs para definir tipos de função personalizados. Eles melhoram a legibilidade e facilitam a manutenção do código.
typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeCompleto = String
    Function(String nome, String nomeCompleto, {String? x, String? x2, int qq});
