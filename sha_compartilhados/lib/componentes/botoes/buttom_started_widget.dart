import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class ButtomStarted extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ButtomStarted({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348.0,
      height: 72.0,
      margin: const EdgeInsets.only(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Cores.corBotaoRoxo,
          backgroundColor: Cores.corBotaoRoxo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
          ),
        ),
        child: Text(
          text,
          style: Fontes.getMontserrat(fontSize: 24, cor: Cores.corTextPreto),
        ),
      ),
    );
  }
}
