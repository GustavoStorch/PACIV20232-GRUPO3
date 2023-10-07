// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class ButtomWidget extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? corFundo;
  final String? icon;
  final Color? corFundoICon;

  ButtomWidget({
    required this.text,
    required this.onPressed,
    this.corFundo,
    this.icon,
    this.corFundoICon,
  });

  @override
  State<ButtomWidget> createState() => _ButtomWidgetState();
}

class _ButtomWidgetState extends State<ButtomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348.0,
      height: 55.0,
      margin: const EdgeInsets.only(),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: widget.corFundo,
          backgroundColor: widget.corFundo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
            side: const BorderSide(color: Cores.corTextoBranco),
          ),
        ),
        child: Row(
          children: [
            if (widget.icon != null)
              const Padding(padding: EdgeInsets.only(left: 15)),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Image.asset(
                  widget.icon!,
                  width: 24,
                  height: 24,
                  color: widget.corFundoICon,
                ),
              ),
            ),
            Expanded(
              child: Text(
                widget.text,
                style: Fontes.getMontserrat(
                  fontSize: 16,
                  cor: Cores.corTextoBranco,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
