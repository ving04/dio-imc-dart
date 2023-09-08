import 'package:imc_calculo/classes/pessoa.dart';
import 'package:imc_calculo/enum/status_imc.dart';

class CalcularIMC {

  StatusIMC calculaIMC(Pessoa pessoa) {
    double imc = pessoa.getPeso() / (pessoa.getAltura() * 2);

    if (imc < 16) {
      return StatusIMC.magrezaGrave;

    } else if (imc >= 16 && imc < 17) {
      return StatusIMC.magrezaModerada;

    } else if (imc >= 17 && imc < 18.5) {
      return StatusIMC.magrezaLeve;

    } else if (imc >= 18.5 && imc < 25) {
      return StatusIMC.saudavel;

    } else if (imc >= 25 && imc <= 30) {
      return StatusIMC.sobrepeso;

    } else if (imc >= 30 && imc < 35) {
      return StatusIMC.obesidadeGrau1;

    } else if (imc >= 35 && imc < 40) {
      return StatusIMC.obesidadeGrau2;

    } else {
      return StatusIMC.obesidadeGrau3;
      
    }
  }

}