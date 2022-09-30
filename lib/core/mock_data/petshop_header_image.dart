
import 'dart:math';

class PetshopHeaderImage {
  static String get getRandomImage {
    final images = [
      'assets/images/petshops/img-1.png',
      'assets/images/petshops/img-2.png',
      'assets/images/petshops/img-3.png',
      'assets/images/petshops/img-4.png',
    ];
    Random random = Random();
    final image = images[random.nextInt(images.length)];
    return image;
  }
}