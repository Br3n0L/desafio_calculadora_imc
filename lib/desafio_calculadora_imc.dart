import 'dart:io';

import 'package:desafio_calculadora_imc/pessoa.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  var pessoa = Pessoa();
  var imc;

  stdout.write("Digite o seu nome: ");
  var nome = stdin.readLineSync();
  pessoa.setName(nome!);

  stdout.write("Digite o seu peso (kg): ");
  var peso = double.parse(stdin.readLineSync()!);
  pessoa.setPeso(peso);

  stdout.write("Digite a sua altura (cm): ");
  var altura = double.parse(stdin.readLineSync()!);
  pessoa.setAltura(altura);

  imc = peso / ((altura / 100) * (altura / 100));

  if (imc < 18.5) {
    print(" ${pessoa.getName(nome)} você está com baixo peso seu imc é: $imc");
  } else if (imc > 18.5 && imc <= 24.9) {
    print(
        " ${pessoa.getName(nome)} você está com  peso normal seu imc é: $imc");
  } else if (imc > 25) {
    print(" ${pessoa.getName(nome)} você está com sobrepeso seu imc é: $imc");
  } else if (imc <= 25.1 && imc <= 29.9) {
    print(" ${pessoa.getName(nome)} você está pré-obeso seu imc é: $imc");
  } else if (imc >= 30 && imc <= 34.9) {
    print(" ${pessoa.getName(nome)} você está obeso I seu imc é: $imc");
  } else {
    print('Tá é morto');
  }
}
