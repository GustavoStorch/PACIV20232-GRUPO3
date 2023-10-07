// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';

class IconButtomWidget extends StatefulWidget {
  const IconButtomWidget({
    required this.onPressed,
    this.readonly = false,
    this.icon,
    this.corFundoIcon,
    Key? key,
  });

  final void Function()? onPressed;
  final bool readonly;
  final String? icon;
  final Color? corFundoIcon;

  @override
  State<IconButtomWidget> createState() => _IConButtonWidgetState();
}

class _IConButtonWidgetState extends State<IconButtomWidget> {
  bool hovered = false;
  bool valid = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onHover: (bool hover) => setState(() => hovered = hover),
      style: ElevatedButton.styleFrom(
        backgroundColor:
            hovered ? Cores.corButtomIconHover : Cores.corButtomIcon,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.grey, width: 0.6),
        ),
      ),
      onPressed: !valid || widget.readonly ? null : widget.onPressed,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 45,
          maxWidth: 60,
        ),
        width: size.width * .6,
        height: size.height * .6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.icon!,
              width: 24,
              height: 24,
              color: widget.corFundoIcon,
            )
          ],
        ),
      ),
    );
  }
}
