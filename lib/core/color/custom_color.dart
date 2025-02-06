import 'package:flutter/material.dart';

class CustomColor {
  // #5cc877
  static const MaterialColor primaryGreen = MaterialColor(
    0xff00c45c,
    <int, Color>{},
  );

  ///! Blue
  static const MaterialColor royalBlue = MaterialColor(
    0xff0a54ff, // rgb(10, 84, 255) or hex #0A54FF
    <int, Color>{
      50: Color(0xff0d61ff),
      100: Color(0xff0f66ff),
      200: Color(0xff105cff),
      300: Color(0xff1165ff),
      400: Color(0xff1260ff),
      500: Color(0xff0a54ff),
      600: Color(0xff0a50f5),
      700: Color(0xff094bdb),
      800: Color(0xff0845c1),
      900: Color(0xff073fb8),
    },
  );

  static const List<Color> gradientRoyalBlue = <Color>[
    Color(0xff0d61ff),
    Color(0xff0f66ff),
    Color(0xff105cff),
    Color(0xff1165ff),
    Color(0xff1260ff),
    Color(0xff0a54ff),
    Color(0xff0a50f5),
    Color(0xff094bdb),
    Color(0xff0845c1),
    Color(0xff073fb8),
  ];

  static const MaterialColor yaleBlue = MaterialColor(
    0xff3b6daf,
    <int, Color>{},
  );

  static const MaterialColor lightRoyalBlue = MaterialColor(
    0xff1578fa,
    <int, Color>{},
  );

  static const MaterialColor darkRoyalBlue = MaterialColor(
    0xff073fb8,
    <int, Color>{},
  );

  static const MaterialColor cobaltBlue = MaterialColor(
    0xff094ba8,
    <int, Color>{},
  );

  static const MaterialColor indigoBlue = MaterialColor(
    0xff0d50a1,
    <int, Color>{},
  );

  static const MaterialColor darkBlue = MaterialColor(
    0xff001a43,
    <int, Color>{},
  );

  ///! Green
  static const MaterialColor darkLimeGreen = MaterialColor(
    0xff79bd31,
    <int, Color>{},
  );

  static const MaterialColor pineGreen = MaterialColor(
    0xff0d6973,
    <int, Color>{},
  );

  static const MaterialColor blueGreen = MaterialColor(
    0xff00b4cc,
    <int, Color>{},
  );

  ///! Grey
  static const MaterialColor blueGrey = MaterialColor(
    0xff44474f,
    <int, Color>{},
  );

  static const MaterialColor charcoalGrey = MaterialColor(
    0xff181818,
    <int, Color>{},
  );

  static const Color lavender = Color.fromARGB(255, 139, 177, 254);

  static const Color fadeBlue = Color.fromRGBO(172, 199, 255, 10);

  static const MaterialColor cherryBlossom = MaterialColor(
    0xffffb4a9,
    <int, Color>{},
  );
}
