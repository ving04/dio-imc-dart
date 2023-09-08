import 'dart:convert';
import 'dart:io';

class ConsoleUtils {

  static double inputDouble(String mensagem, String mensagemEntradaInvalida, {double? valorMinimo, double? valorMaximo}) {
    late double? valor;
      do {
        print(mensagem);
        var input = stdin.readLineSync(encoding: utf8);
        valor = double.tryParse(input ?? "");
        if (valor == null || (valorMinimo != null && valor < valorMinimo) || (valorMaximo != null && valor > valorMaximo)) {
          valor = null;
          print(mensagemEntradaInvalida);
        }
      } while (valor == null);
    return valor;
  }

  static String inputStringValido(String mensagem, String mensagemEntradaInvalida) {
    String? valor;
    do {
      print(mensagem);
      valor = stdin.readLineSync(encoding: utf8);
      if ((valor!.isEmpty) || (valor.trim().isEmpty)) {
        valor = null;
        print(mensagemEntradaInvalida);
      }
    } while (valor == null);
    return valor;
  }


}