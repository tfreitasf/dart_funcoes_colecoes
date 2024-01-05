// ignore_for_file: file_names

void main() {
  // Geração de uma lista de números e impressão de cada número usando forEach.
  var numero = List.generate(10, (index) => index);
  numero.forEach(print);

  // Utilizando uma função própria com forEach para imprimir elementos da lista.
  numero.forEach(printProprio);

  //Expand
  // Array Bidimmencional
  // Utilização de expand para achatar uma lista de listas em uma única lista
  var lista = [
    [1, 2],
    [3, 4]
  ];
  print(lista[0][0]);

  //forma menos elegantes
  var listaNova = [...lista[0], ...lista[1]];
  print(listaNova);

  var listaNovaExpand = lista.expand((numero) => numero).toList();
  print(listaNovaExpand);

  // Uso de any para verificar se algum elemento da lista atende a uma condição específica.
  final listaBusca = ['Aline', 'Thiago', 'Fred', 'Nina', 'Frajola', 'Joey'];
  if (listaBusca.any((nome) => nome == 'Fred')) {
    print('Tem Fred');
  } else {
    print('Não tem Fred');
  }

  // Uso de every para verificar se todos os elementos da lista atendem a uma condição.
  final listaBusca2 = ['Aline', 'Thiago', 'Fred', 'Nina', 'Frajola', 'Joey'];
  if (listaBusca2.every((nome) => nome.contains('e'))) {
    print('Todos os nomes tem a letra e');
  } else {
    print('Nem todos os nomes tem a letra e');
  }

  // Sort para ordenar listas de strings e números.
  var listaNomesOrdenacao = [
    'Aline',
    'Thiago',
    'Fred',
    'Nina',
    'Frajola',
    'Joey'
  ];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  // Sort com função personalizada para ordenar uma lista de strings baseada em um valor numérico extraído da string.
  var listaPacientes = [
    'Thiago Freitas|37',
    'Aline Brugnolli|37',
    'Fred Brugnolli|13',
    'Frajoa Freitas|8',
    'Joey Freitas|2'
  ];

  listaPacientes.sort();
  print(listaPacientes);

  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);

  var listaPacientes2 = [
    'Thiago Freitas|37',
    'Aline Brugnolli|37',
    'Fred Brugnolli|13',
    'Frajoa Freitas|8',
    'Joey Freitas|2'
  ];

  // sort com CompareTo
  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);

  //Pacientes por funcao
  var listaPacientes3 = [
    'Thiago Freitas|37',
    'Aline Brugnolli|37',
    'Fred Brugnolli|13',
    'Frajoa Freitas|8',
    'Joey Freitas|2'
  ];
  print("antes");
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print("depois");
  print(listaPacientes3);
}

void printProprio(Object valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(pacientes);
}
