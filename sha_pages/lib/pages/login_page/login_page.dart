// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_compartilhados/componentes/botoes/buttom_started_widget.dart';
import 'package:sha_compartilhados/componentes/campos/text_field_string_widget.dart';
import 'package:sha_compartilhados/componentes/botoes/buttom_text_widget.dart';
import 'package:sha_compartilhados/componentes/botoes/icon_buttom_wdiget.dart';
import 'package:sha_pages/pages/register_page/register_page.dart';
import 'package:sha_pages/pages/home_page/home_page_initial.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextFieldtringWidget txtUsername = TextFieldtringWidget(
    placeholder: 'Enter Username Or Email',
  );

  late final TextFieldtringWidget txtSenha = TextFieldtringWidget(
    placeholder: 'Password',
    password: true,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 120)),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Log In',
                  style: Fontes.getMontserrat(
                    fontSize: 24,
                    cor: Cores.corTextoBranco,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.of(context).pop(false)},
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RichText(
                  text: TextSpan(
                    style: Fontes.getMontserrat(
                        cor: Cores.corTextoBranco, fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(text: 'If You Need Any Support '),
                      TextSpan(
                        text: 'Click Here',
                        style: TextStyle(
                          color: Cores.corTextoRoxo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22, top: 30),
              child: txtUsername,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22, top: 24),
              child: txtSenha,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 24),
              child: TextButtomWidget(
                onTap: () => {
                  Navigator.of(context).pop(false),
                },
                text: 'Forgot Password?',
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 24)),
            ButtomStarted(
              text: 'Log In',
              corFundo: Cores.corBotaoRoxo,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePageInitial()),
                );
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: fullWidth * 0.8,
              child: const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtomWidget(
                  icon: 'assets/facebook.ico',
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                IconButtomWidget(
                  icon: 'assets/google.ico',
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                IconButtomWidget(
                  icon: 'assets/apple.ico',
                  corFundoIcon: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                ),
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: RichText(
                  text: TextSpan(
                    style: Fontes.getMontserrat(
                        cor: Cores.corTextoBranco, fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(text: 'Don\'t Have An Account? '),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Cores.corTextoRoxo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 90.0)),
          ],
        ),
      ),
    );
  }
}
