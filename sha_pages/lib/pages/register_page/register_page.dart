// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, avoid_print, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_compartilhados/componentes/botoes/buttom_started_widget.dart';
import 'package:sha_compartilhados/componentes/campos/text_field_string_widget.dart';
import 'package:sha_compartilhados/componentes/botoes/icon_buttom_wdiget.dart';
import 'package:sha_pages/pages/home_page/home_page_initial.dart';
import 'package:sha_pages/pages/login_page/login_page.dart';
import 'package:sha_models/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late UsuarioModel usuario;

  late final TextFieldtringWidget txtUsername = TextFieldtringWidget(
    placeholder: 'Full Name',
    onChanged: (String? str) {
      usuario.nome = txtUsername.text;
    },
  );

  late final TextFieldtringWidget txtEmail = TextFieldtringWidget(
    placeholder: 'Enter Email',
    onChanged: (String? str) {
      usuario.email = txtEmail.text;
    },
  );

  late final TextFieldtringWidget txtSenha = TextFieldtringWidget(
    placeholder: 'Password',
    password: true,
    onChanged: (String? str) {
      setState(() {
        usuario.senha = txtSenha.text;
      });
    },
  );

  late final TextFieldtringWidget txtRepeatSenha = TextFieldtringWidget(
    placeholder: 'Repeat Password',
    password: true,
    onChanged: (String? str) {
      setState(() {
        usuario.senhaConfirmacao = txtRepeatSenha.text;
      });
    },
  );

  @override
  void initState() {
    super.initState();
    usuario = UsuarioModel.empty();
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Cores.corPrincipal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 70)),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Register',
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
              padding: const EdgeInsets.only(right: 22, left: 22, top: 18),
              child: txtEmail,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22, top: 18),
              child: txtSenha,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22, top: 18),
              child: txtRepeatSenha,
            ),
            const Padding(padding: EdgeInsets.only(top: 24)),
            ButtomStarted(
              text: 'Register',
              corFundo: Cores.corBotaoRoxo,
              onPressed: () {
                registrarUsuarioComAuthEFirestore(
                    usuario: usuario, context: context);
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
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                ),
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: RichText(
                  text: TextSpan(
                    style: Fontes.getMontserrat(
                        cor: Cores.corTextoBranco, fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(text: 'Have An Account? '),
                      TextSpan(
                        text: 'Log In',
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
            const Padding(padding: EdgeInsets.only(top: 40.0)),
          ],
        ),
      ),
    );
  }

  Future<void> registrarUsuarioComAuthEFirestore({
    required UsuarioModel usuario,
    required BuildContext context,
  }) async {
    if (usuario.senha != usuario.senhaConfirmacao) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('As senhas não coincidem')),
      );
      return;
    }

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usuario.email!,
        password: usuario.senha!,
      );

      User? user = userCredential.user;
      if (user != null) {
        await FirebaseFirestore.instance
            .collection('usuarios')
            .doc(user.uid)
            .set({
          'nome': usuario.nome,
          'email': usuario.email,
          'senha': usuario.senha,
        });

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePageInitial()),
        );
      }
    } catch (e) {
      print('Erro de registro: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro de registro: $e')),
      );
    }
  }
}
