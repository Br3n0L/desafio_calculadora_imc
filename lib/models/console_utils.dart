import 'dart:io';

class ConsoleUltils {
  static String lerNomedoUsuarioComMensagem(String texto) {
    print(texto);
    return lerNomedoUsuario();
  }

  static String lerNomedoUsuario() {
    return stdin.readLineSync() ?? "";
  }
}
