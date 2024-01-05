// ignore_for_file: file_names

void main(){
  final valorCalculado = somaInteiros(10, 10);
  print('A soma de dois inteiros é $valorCalculado');


}

/*
  Estrutura Geral de uma Função em Dart:

  - Tipo de Retorno:
    Indica o tipo de dado que a função retornará. Pode ser qualquer tipo de dado como int, String, void, etc.
    Se a função não retornar nenhum valor, o tipo de retorno será 'void'.

  - Nome da Função:
    Identificador único para a função. Deve ser descritivo e seguir as convenções de nomenclatura de Dart.
    Exemplo: calcularSoma, obterNomeUsuario, etc.

  - Parâmetros da Função:
    São as entradas da função. Uma função pode ter zero ou mais parâmetros.
    - Parâmetros Posicionais: Devem ser fornecidos na ordem em que são declarados.
    - Parâmetros Nomeados: São opcionais e identificados pelo nome na chamada da função. São declarados entre chaves { }.
    - Parâmetros Obrigatórios: Declarados com a palavra-chave 'required' para parâmetros nomeados ou posicionais sem valor padrão.
    - Parâmetros com Valor Padrão: Têm um valor padrão definido e são opcionais na chamada da função.

  - Corpo da Função:
    Contém o código a ser executado quando a função é chamada. Define as operações da função e retorna um valor (a menos que o tipo de retorno seja 'void').

  - Chamada da Função:
    O processo de execução da função. A função é chamada pelo seu nome seguido de parênteses, que podem incluir argumentos correspondentes aos parâmetros da função.
    Exemplo: resultado = calcularSoma(5, 3);

  Nota:
  As funções em Dart podem ser flexíveis e poderosas. Podem incluir funcionalidades como:
    - Parâmetros opcionais (posicionais ou nomeados) com ou sem valores padrão.
    - Retorno de diferentes tipos de dados.
    - Implementação de lógica complexa.
    - E mais.

  Funções são fundamentais para estruturar e organizar o código em Dart, permitindo a reutilização de código e a criação de operações modulares.
*/

int somaInteiros(int num1, int num2){
  print('Executando a soma de inteiros($num1, $num2)');
  return num1 + num2;
  
}