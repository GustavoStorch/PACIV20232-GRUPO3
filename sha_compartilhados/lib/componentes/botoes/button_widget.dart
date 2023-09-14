import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class ButtomWidget extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? corFundo;

  ButtomWidget({required this.text, required this.onPressed, this.corFundo});

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
        // child: Text(
        //   widget.text,
        //   style: Fontes.getMontserrat(fontSize: 24, cor: Cores.corTextoBranco),
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.medical_services_outlined,
            ),
            const SizedBox(width: 8.0),
            Text(
              widget.text,
              style: Fontes.getMontserrat(fontSize: 24, cor: Cores.corTextoBranco),
            ),
          ],
        ),
      ),
    );
  }
}
