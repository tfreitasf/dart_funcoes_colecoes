import 'dart:math';
import 'package:collection/collection.dart';

void main() {
  print('A soma de 10 + 10 é ${somaInterios(10, 10)}');
  print('A soma de 10.5 + 10.5 é ${somaDouble(num1: 10.5, num2: 10.5)}');
  print(
      'A soma de 10.2 + 10.2 é ${somaDoubleObrigatorio(num1: 10.2, num2: 10.2)}');
  print(
      'A soma de 10.3 + 10.3 é ${somaDoubleObrigatorio2(num1: null, num2: 10.3)}');

  print('A soma de 10.2 + 10.2 é ${somaDoubleDefault()}');

  parametrosNormaisComNomeados(1, nome: 'Thiago Freitas', idade: 37);

  var numeros = [10, 20, 30, 40, 50];
  print('Soma dos elementos: ${operarLista(numeros, operacao: 'soma')}');
  print('Maior elemento: ${operarLista(numeros, operacao: 'maior')}');
  print('Operação padrão (soma): ${operarLista(numeros)}');
}

/*
  Comentário Geral sobre Parâmetros em Dart:

  Parâmetros Posicionais: 
  - São os parâmetros mais comuns e básicos em funções.
  - A ordem em que são passados na chamada da função é importante.
  - Podem ser obrigatórios ou opcionais.

  Parâmetros Opcionais Posicionais: 
  - São declarados entre colchetes [ ].
  - Têm valores padrão definidos para que a função possa ser chamada sem passá-los.
  - Úteis quando alguns argumentos não precisam ser fornecidos sempre.

  Parâmetros Nomeados: 
  - São declarados entre chaves { }.
  - Podem ser passados em qualquer ordem na chamada da função.
  - Melhoram a legibilidade do código, especialmente quando uma função tem muitos parâmetros ou quando o significado do valor do parâmetro não é óbvio.

  Parâmetros Obrigatórios Nomeados: 
  - São parâmetros nomeados que não podem ser omitidos.
  - Utilizam a palavra-chave 'required' para indicar que são obrigatórios.
  - Garantem que um valor deve ser fornecido, mas mantêm a flexibilidade da ordem de passagem.

  Parâmetros com Valor Padrão: 
  - Podem ser posicionais ou nomeados.
  - Têm um valor padrão definido, que é usado caso nada seja passado na chamada da função.
  - Permitem a flexibilidade de omitir argumentos, com um comportamento padrão definido.

  A escolha entre esses tipos de parâmetros depende do caso de uso específico, equilibrando a necessidade de clareza, flexibilidade e garantia de que valores importantes sejam fornecidos para a função.
*/

// Soma dois números inteiros. Parâmetros obrigatórios e posicionais.
int somaInterios(int num1, int num2) {
  return num1 + num2;
}

// Soma dois números de ponto flutuante com parâmetros nomeados opcionais. 
// Retorna 0.0 se algum dos números for nulo.
double somaDouble({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }

  return 0.0;
}

// Soma dois números de ponto flutuante com parâmetros nomeados obrigatórios.
double somaDoubleObrigatorio({required double num1, required double num2}) {
  return num1 + num2;
}

// Soma dois números de ponto flutuante; um é obrigatório e o outro é opcional e pode ser nulo.
// Se o parâmetro opcional for nulo, é tratado como 0.
double somaDoubleObrigatorio2({required double? num1, required double num2}) {
  num1 ??= 0;
  return num1 + num2;
}


// Soma dois números de ponto flutuante com parâmetros nomeados e valores padrão.
// Se nenhum valor for fornecido, usa 0 como padrão para ambos os parâmetros.
double somaDoubleDefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

// Soma dois números inteiros com parâmetros posicionais opcionais.
// Ambos os parâmetros têm valores padrão de 0.
int somaIntOpcional([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

//Uma função que mistura um parâmetro posicional obrigatório com parâmetros nomeados obrigatórios.
void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

//Uma combinação de parâmetro posicional obrigatório com parâmetros posicionais opcionais.
void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}


// Realiza uma operação especificada em uma lista de números inteiros. 
// A operação é um parâmetro nomeado opcional com valor padrão 'soma'.
// Suporta as operações 'soma' e 'maior'.
dynamic operarLista(List<int> lista, {String operacao = 'soma'}) {
  switch (operacao) {
    case 'soma':
      return lista.sum;
    case 'maior':
      return lista.isNotEmpty ? lista.reduce(max) : 0;
    default:
      print('Operação não reconhecida. Retornando a soma por padrão.');
      return lista.sum;
  }
}
