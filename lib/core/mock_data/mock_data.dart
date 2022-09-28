import 'dart:math';

class NuvolsCoreMockData {
  static String gerarPalavra({int tamanho = 5}) {
    const characters = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random random = Random();
    return String.fromCharCodes(
      Iterable.generate(
        tamanho,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
  }

  static String gerarPalavras(int tamanho) {
    String palavra = '';
    const characters = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random random = Random();

    for (var i = 0; i < tamanho; i++) {
      String valor = String.fromCharCodes(
        Iterable.generate(
          5,
          (_) => characters.codeUnitAt(
            random.nextInt(characters.length),
          ),
        ),
      );
      palavra = "$palavra $valor";
    }
    return palavra.trimLeft();
  }

  static String gerarTelefone({bool formatado = true}) {
    const characters = '0123456789';
    Random random = Random();
    String ddd = String.fromCharCodes(
      Iterable.generate(
        2,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
    String inicial = String.fromCharCodes(
      Iterable.generate(
        5,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
    String fim = String.fromCharCodes(
      Iterable.generate(
        4,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
    if (formatado) {
      return "($ddd) $inicial-$fim";
    }
    return "$ddd$inicial$fim";
  }

  static String gerarCPF() {
    Random random = Random();
    const characters = "0123456789";
    return String.fromCharCodes(
      Iterable.generate(
        11,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
  }

  static String gerarCNPJ({bool mascarado = false}) {
    Random random = Random();
    String resultado = '';
    const characters = "0123456789";
    resultado = String.fromCharCodes(
      Iterable.generate(
        14,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
    if (mascarado == true) {
      return "${resultado.substring(0, 2)}.${resultado.substring(2, 5)}.${resultado.substring(5, 8)}/${resultado.substring(8, 12)}-${resultado.substring(12, 14)}";
    }
    return resultado;
  }

  static String gerarNumeros(int tamanho) {
    Random random = Random();
    const characters = "0123456789";
    return String.fromCharCodes(
      Iterable.generate(
        tamanho,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
  }

  static String gerarEmail() {
    final dominios = ['gmail.com', 'yahoo.com', 'hotmail.com'];
    Random random = Random();
    final dominio = dominios[random.nextInt(dominios.length)];
    const characters = "abcdefghijklmnopqrtuvxzwy";
    final conta = String.fromCharCodes(
      Iterable.generate(
        10,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );

    return "${conta.toLowerCase()}@$dominio";
  }

  static String get getRandomImage {
    final images = [
      'https://images.pexels.com/photos/12123082/pexels-photo-12123082.jpeg',
      'https://images.pexels.com/photos/13739535/pexels-photo-13739535.jpeg',
      'https://images.pexels.com/photos/12301511/pexels-photo-12301511.jpeg',
      'https://images.pexels.com/photos/10012874/pexels-photo-10012874.jpeg',
      'https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg',
      'https://images.pexels.com/photos/2317904/pexels-photo-2317904.jpeg',
      'https://images.pexels.com/photos/459198/pexels-photo-459198.jpeg',
      'https://images.pexels.com/photos/3250638/pexels-photo-3250638.jpeg',
      'https://images.pexels.com/photos/792381/pexels-photo-792381.jpeg',
      'https://images.pexels.com/photos/161154/stained-glass-spiral-circle-pattern-161154.jpeg',
      'https://images.pexels.com/photos/102127/pexels-photo-102127.jpeg',
      'https://images.pexels.com/photos/1570264/pexels-photo-1570264.jpeg'
    ];
    Random random = Random();
    final image = images[random.nextInt(images.length)];
    return image;
  }
}
