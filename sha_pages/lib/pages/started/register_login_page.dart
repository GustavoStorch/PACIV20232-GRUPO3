import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_compartilhados/componentes/botoes/buttom_started_widget.dart';
import 'package:sha_compartilhados/componentes/botoes/button_widget.dart';

class RegisterLoginPage extends StatefulWidget {
  const RegisterLoginPage({Key? key}) : super(key: key);

  @override
  _RegisterLoginPageState createState() => _RegisterLoginPageState();
}

class _RegisterLoginPageState extends State<RegisterLoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: Column(
        children: [
          const Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                'S. Smart\nH. Home\nA. Assistent',
                style: Fontes.getMontserrat(
                    fontSize: 40, cor: Cores.corTextoBranco),
              ),
            ),
          ),
          const Spacer(),
          const SizedBox(height: 20.0),
          ButtomStarted(
            text: 'Log in',
            corFundo: Cores.corBotaoRoxo,
            onPressed: () {},
          ),
          const SizedBox(height: 20.0),
          ButtomWidget(
            text: 'Continue with phone number',
            corFundo: Cores.corTextPreto,
            onPressed: () {},
          ),
          const SizedBox(height: 20.0),
          ButtomWidget(
            text: 'Continue with Google',
            corFundo: Cores.corTextPreto,
            onPressed: () {},
          ),
          const SizedBox(height: 20.0),
          ButtomWidget(
            text: 'Continue with Facebook',
            corFundo: Cores.corTextPreto,
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () => {}, // Chama a função de navegação ao ser pressionado
            child: Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(
                'Register',
                style: Fontes.getMontserrat(cor: Cores.corTextoBranco),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 24.0)),
        ],
      ),
    );
  }
}
