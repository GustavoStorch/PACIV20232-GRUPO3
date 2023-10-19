// ignore_for_file: library_private_types_in_public_api, unused_local_variable
import 'package:flutter/material.dart';
import 'package:sha_compartilhados/cores/cores.dart';
import 'package:sha_compartilhados/fontes/fontes.dart';
import 'package:sha_compartilhados/componentes/campos/text_field_string_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextFieldtringWidget txtUsername = TextFieldtringWidget(
    placeholder: 'Enter Username Or Email',
  );

  late final TextFieldtringWidget txtSenha = TextFieldtringWidget(
    placeholder: 'Password',
    password: true,
  );

  final List<CarouselItem> items = [
    CarouselItem(
      imagePath: 'assets/provisorio2.png',
      text: 'Mercado',
    ),
    CarouselItem(
      imagePath: 'assets/provisorio3.png',
      text: 'revelações',
    ),
    CarouselItem(
      imagePath: 'assets/provisorio4.png',
      text: 'Armário',
    ),
  ];

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
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Image.asset(
                  'assets/provisorio1.png',
                  width: 500,
                  height: 200,
                ),
              ),
            ),
            Text(
              'Recomendações',
              style: Fontes.getMontserrat(
                fontSize: 24,
                cor: Cores.corTextoBranco,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: CarouselSlider(
                items: items.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          Image.asset(
                            item.imagePath,
                            width: 200,
                            height: 200,
                          ),
                          Text(
                            item.text,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  viewportFraction: 1 / 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselItem {
  final String imagePath;
  final String text;

  CarouselItem({
    required this.imagePath,
    required this.text,
  });
}
