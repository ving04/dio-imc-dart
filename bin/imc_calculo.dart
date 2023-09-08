import 'package:imc_calculo/classes/calculo_imc.dart';
import 'package:imc_calculo/classes/pessoa.dart';
import 'package:imc_calculo/utils/console_utils.dart';


void main(List<String> arguments) {
  CalcularIMC calculadoraIMC = CalcularIMC();

  final nomePessoa = ConsoleUtils.inputStringValido(
    "Digite o seu nome: ",
    "Nome inválido, não deve conter números, caracteres especiais ou ser nulo"
  );
  final pesoPessoa = ConsoleUtils.inputDouble(
    "Digite o seu peso em Quilos (Ex.: 65): ",
    "Peso inválido! Por favor insira peso maior ou igual a 1",
    valorMinimo: 1
  );
  final alturaPessoa = ConsoleUtils.inputDouble(
    "Digite a sua altura em metros (Ex.: 1.65):",
    "Altura inválida! Por favor insira altura maior ou igual a 0.1",
    valorMinimo: 0.1
  );
  var pessoa = Pessoa(nomePessoa, pesoPessoa, alturaPessoa);
  final imc = pessoa.getPeso() / (pessoa.getAltura() * 2);

  print(pessoa);
  print("Seu IMC é de: ${imc.toStringAsFixed(2)}");
  print("Status: " + calculadoraIMC.calculaIMC(pessoa).value);

}
