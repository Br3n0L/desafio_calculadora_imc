import 'dart:convert';
import 'dart:io';

import 'package:desafio_calculadora_imc/models/console_utils.dart';
import 'package:desafio_calculadora_imc/pessoa.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  var pessoa = Pessoa();

  stdout.write("Digite o seu nome: ");
  var nome = stdin.readLineSync();
  pessoa.setName(nome!);

  stdout.write("Digite o seu peso (kg): ");
  var peso = double.parse(stdin.readLineSync()!);
  pessoa.setPeso(peso);

  stdout.write("Digite a sua altura (cm): ");
  var altura = double.parse(stdin.readLineSync()!);
  pessoa.setAltura(altura);

  print("Nome: ${pessoa.getName(nome)}");
  print("Peso: ${pessoa.getPeso(peso)} kg");
  print("Altura: ${pessoa.getAltura(altura)} cm");
}
