import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class ButtomWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? corFundo;

  ButtomWidget({required this.text, required this.onPressed, this.corFundo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348.0,
      height: 40.0,
      margin: const EdgeInsets.only(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: corFundo,
          backgroundColor: corFundo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
            side: const BorderSide(color: Cores.corTextoBranco),
          ),
        ),
        child: Text(
          text,
          style: Fontes.getMontserrat(fontSize: 24, cor: Cores.corTextoBranco),
        ),
      ),
    );
  }
}
