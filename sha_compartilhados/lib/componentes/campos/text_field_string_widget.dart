// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, no_logic_in_create_state, overridden_fields, annotate_overrides, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';

class TextFieldtringWidget extends StatefulWidget {
  TextFieldtringWidget({
    required this.placeholder,
    this.password = false,
    this.validator,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onChanged,
    this.readOnly = false,
    Key? key,
  }) : super(key: key);

  final GlobalKey<_TextFieldStringWidgetState> key =
      GlobalKey<_TextFieldStringWidgetState>();

  final String placeholder;
  final bool password;
  final String Function(String? str)? validator;
  final TextInputAction? textInputAction;
  final void Function(String? str)? onFieldSubmitted;
  final void Function(String str)? onChanged;
  final bool readOnly;

  String get text => key.currentState!.controller.text;

  bool valid() {
    if (validator != null) key.currentState!.validate();
    return key.currentState!.valid();
  }

  void validate() {
    if (validator != null) key.currentState!.validate();
  }

  @override
  State<TextFieldtringWidget> createState() => _TextFieldStringWidgetState(
        key: key,
        textInputAction: textInputAction,
        onChanged: onChanged,
      );
}

class _TextFieldStringWidgetState extends State<TextFieldtringWidget> {
  _TextFieldStringWidgetState({
    Key? key,
    this.textInputAction,
    this.onChanged,
  });
  final FocusNode focusNode = FocusNode();
  final TextInputAction? textInputAction;
  final void Function(String str)? onChanged;

  final TextEditingController controller = TextEditingController();
  bool visible = false;
  bool focused = false;
  String textChanged = '';
  String errorText = '';

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() => textChanged = controller.text);
    });
    focusNode.addListener(() {
      setState(() => focused = focusNode.hasFocus);
    });
    return Column(
      children: [
        Material(
          elevation: 5,
          shadowColor: Colors.grey,
          child: TextField(
            textInputAction: textInputAction,
            onChanged: (String? str) {
              if (!widget.readOnly) {
                validate();
                if (onChanged != null) onChanged!(str == null ? '' : str);
              }
            },
            obscureText: !visible && widget.password,
            obscuringCharacter: '*',
            autocorrect: false,
            controller: controller,
            focusNode: focusNode,
            onSubmitted: widget.onFieldSubmitted,
            style: Fontes.getMontserrat(
              cor: Cores.corTextoBranco,
              fontSize: 19,
            ),
            decoration: InputDecoration(
              suffixIcon: widget.password
                  ? InkWell(
                      onTap: () => setState(
                        () => visible = !visible,
                      ),
                      child: Icon(
                        visible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    )
                  : null,
              filled: true,
              fillColor: Colors.black,
              label: Padding(
                padding: focused || textChanged.isNotEmpty
                    ? const EdgeInsets.only(bottom: 24.0)
                    : const EdgeInsets.all(0),
                child: Text(
                  widget.placeholder,
                  style: Fontes.getMontserrat(
                    cor: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errorText.isNotEmpty ? Colors.red : Colors.grey,
                  width: 0.7,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: errorText.isNotEmpty ? Colors.red : Colors.grey,
                    width: 0.7,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(0),
                  )),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errorText.isNotEmpty ? Colors.red : Colors.grey,
                  width: 0.7,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: errorText.isNotEmpty,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    errorText,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  bool valid() => errorText.isEmpty;

  void validate() {
    String error = '';
    if (widget.validator != null) {
      String? validatedString = widget.validator!(controller.text);
      error = validatedString;
    }
    setState(() {
      errorText = error;
    });
  }
}
