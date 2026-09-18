import 'dart:math';

class Images {
  /// WebApps Logo ///
  static String logoIcon = 'assets/logo/logo.png';

  /// Background ///
  static String background = 'assets/auth_background.jpeg';

  /// Avatars ///
  static List<String> avatars = List.generate(10, (index) => 'assets/avatar/avatar_${index + 1}.png');
  
  static List<String> tour = List.generate(10, (index) => 'assets/dummy/tour/tour_${index + 1}.jpg');

  static List<String> dummy = List.generate(5, (index) => 'assets/dummy/dummy/dummy_${index + 1}.jpg');

  static String randomImage(List<String> images) => images[Random().nextInt(images.length)];
}
