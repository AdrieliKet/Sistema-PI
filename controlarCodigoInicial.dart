import 'dart:io';
//Essa é a versão inicial do código, já visulizada pelo prof Helio
void main(List<String> args) {
  int opcaomenu;
  int valorGlicemia;
  double valorPressao;
  int estaEmJejum;
  print('''Menu
        1- Registro Glicemia
        2- Registro Pressão ''');

  //estou solicitando a opção do menu que o usuário escolheu
  String respostaOpMenu;
  respostaOpMenu = null;
  do {
    print('Entrada não pode ser nula');
    respostaOpMenu = stdin.readLineSync();
  } while (respostaOpMenu == null);
  opcaomenu = int.parse(respostaOpMenu);

//estou perguntando está em jejum
  print('''Você está em jejum? 
              1- Sim 
              2- Não''');
  String respostajejum;
  respostajejum = null;
  do {
    print('Entrada não pode ser nula');
    respostajejum = stdin.readLineSync();
  } while (respostajejum == null);
  estaEmJejum = int.parse(respostajejum);

//estou perguntando o valor da glicemia do paciente
  print('Informe o valor de sua Glicemia: ');
  String respostaValorGlicemia;
  respostaValorGlicemia = null;
  do {
    print('Entrada não pode ser nula');
    respostaValorGlicemia = stdin.readLineSync();
  } while (respostaValorGlicemia == null);
  valorGlicemia = int.parse(respostaValorGlicemia);

//estou perguntando o valor da pressão arterial do paciente
  print(
      'Informe o valor de sua pressão arterial, ao invês de saparar por / insira uma virgula no local: ');
  String respostaValorPressao;
  respostaValorPressao = null;
  do {
    print('Entrada não pode ser nula');
    respostaValorPressao = stdin.readLineSync();
  } while (respostaValorPressao == null);
  valorPressao = double.parse(respostaValorPressao);

  //implementação dos if do que o sistema fará
  if (opcaomenu == 1) verificarGlicemia(estaEmJejum, valorGlicemia);
  if (opcaomenu == 2) verificarPressao(valorPressao);
}

// estou verificando a glicemia se a pessoa não esta em jejum
String verificarGlicemiaNaoJejum(int valorGlicemia) {
  if (valorGlicemia < 70) return ('Hipoglicemia');
  if (valorGlicemia >= 70 && valorGlicemia <= 140) return ('Normal');
  if (valorGlicemia > 140 && valorGlicemia <= 200) return ('Pré-Diabetes');
  if (valorGlicemia > 200) return ('Diabetes');
}
