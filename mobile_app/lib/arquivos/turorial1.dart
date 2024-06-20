import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'turorial2.dart';

void main() {
  runApp(const Tutorial());
}

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleOnFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleOnFactor;
    return max(1, min(val, maxTextScaleOnFactor));
  }
}

final List<String> citacoes = ["Texto1", "Texto 2"];

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ajuda Diária',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyTutorialPage(title: 'Flutter Demo Home Page'),
      locale: const Locale('pt', 'BR'),
    );
  }
}

class MyTutorialPage extends StatefulWidget {
  const MyTutorialPage({super.key, required this.title});

  final String title;

  @override
  State<MyTutorialPage> createState() => _MyTutorialPageState();
}

class _MyTutorialPageState extends State<MyTutorialPage> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 43, 94),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 51, 43, 94),
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/images/logo.png'),
                TextButton(
                  onPressed: () {
                    print('Botão pressionado!');
                  },
                  child: Text(
                    'pular',
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                          color: Color(0xff5fc0e7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 24.0, vertical: 0),
            color: const Color.fromARGB(255, 51, 43, 94),
            child: Image.asset('assets/images/model1.png'),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 24.0,
              ),
              color: const Color.fromRGBO(16, 25, 35, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Versículo bíblico diário',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: Color(0xff5fc0e7),
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Text(
                      'Versículo Diário te conecta com a Bíblia de forma simples e inspiradora. Um novo versículo para refletir e fortalecer sua fé a cada manhã.',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tutorial2()),
                        );
                      },
                      child: Text(
                        'avançar',
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                            color: Color(0xff5fc0e7),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
