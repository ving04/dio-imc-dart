import 'package:imc_calculo/classes/calculo_imc.dart';
import 'package:imc_calculo/classes/pessoa.dart';
import 'package:imc_calculo/enum/status_imc.dart';
import 'package:test/test.dart';

void main() {

  late CalcularIMC calculadoraIMC;
  setUp(() {
    calculadoraIMC = CalcularIMC();
  });

  test('Deve Retornar Magreza Grave', () {
    const expected = StatusIMC.magrezaGrave;
    final pessoa = Pessoa("Paulo", 30, 1.7);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Magreza Moderada', () {
    const expected = StatusIMC.magrezaModerada;
    final pessoa = Pessoa("Carol", 62, 1.9);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Magreza Leve', () {
    const expected = StatusIMC.magrezaLeve;
    final pessoa = Pessoa("Paulo", 62, 1.8);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Saudavel', () {
    const expected = StatusIMC.saudavel;
    final pessoa = Pessoa("Matteo", 65, 1.7);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Sobrepeso', () {
    const expected = StatusIMC.sobrepeso;
    final pessoa = Pessoa("Rafael", 90, 1.7);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Obesidade Grau 1', () {
    const expected = StatusIMC.obesidadeGrau1;
    final pessoa = Pessoa("Rafael", 110, 1.7);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Obesidade Grau 2', () {
    const expected = StatusIMC.obesidadeGrau2;
    final pessoa = Pessoa("Emanuel", 126, 1.7);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });

  test('Deve Retornar Obesidade Grau 3', () {
    const expected = StatusIMC.obesidadeGrau3;
    final pessoa = Pessoa("Cesar", 136, 1.7);

    final result = calculadoraIMC.calculaIMC(pessoa);
    expect(result, expected);
  });
}