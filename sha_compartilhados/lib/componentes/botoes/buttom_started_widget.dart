import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class ButtomStarted extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? corFundo;
  final IconData? icon;

  ButtomStarted({
    required this.text,
    required this.onPressed,
    this.corFundo,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348.0,
      height: 55.0,
      margin: const EdgeInsets.only(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: corFundo,
          backgroundColor: corFundo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          if (icon != null) Icon(icon, size: 24),
          const SizedBox(width: 8.0),
          Text(
            text,
            style: Fontes.getMontserrat(fontSize: 24, cor: Cores.corTextPreto),
          ),
        ]),
      ),
    );
  }
}
