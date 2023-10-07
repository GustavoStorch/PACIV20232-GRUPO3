import 'package:sha_dependencias/main.dart';
import 'package:flutter/material.dart';

abstract class Icones {
  static const Icon iconeProcesso = Icon(
    Symbols.cycle,
  );

  static const Icon iconeAdmin = Icon(
    Symbols.settings,
  );

  static const Icon iconeSenhaInvisivel = Icon(
    Symbols.visibility_off,
    color: Colors.black,
  );

  static const Icon iconeSenhaVisivel = Icon(
    Symbols.visibility,
    color: Colors.black,
  );

  static const Icon iconeTeste = Icon(
    Symbols.dataset,
    color: Colors.black,
  );
}
