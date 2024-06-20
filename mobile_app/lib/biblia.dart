import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/dashboard.dart';

void main() {
  runApp(const Biblia());
}

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleOnFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleOnFactor;
    return max(1, min(val, maxTextScaleOnFactor));
  }
}

class Biblia extends StatelessWidget {
  const Biblia({super.key});

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
      home: const MyBibliaPage(title: 'Flutter Demo Home Page'),
      locale: const Locale('pt', 'BR'),
    );
  }
}

class MyBibliaPage extends StatefulWidget {
  const MyBibliaPage({super.key, required this.title});

  final String title;

  @override
  State<MyBibliaPage> createState() => _MyBibliaPageState();
}

class _MyBibliaPageState extends State<MyBibliaPage> {
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
      body: Container(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 48.0,
          right: 16.0,
          bottom: 40.0,
        ),
        color: Colors.cyanAccent[200],
        child: const Apresentavel(),
      ),
    );
  }
}

class Apresentavel extends StatelessWidget {
  const Apresentavel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          },
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.arrow_back,
              ),
              Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Voltar',
                  style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: AlignmentDirectional.topStart,
          child: const Icon(
            Icons.format_quote_sharp,
          ),
        ),
        Container(
          alignment: AlignmentDirectional.center,
          child: Text("Textp"),
        ),
        Container(
          alignment: AlignmentDirectional.bottomEnd,
          child: Icon(
            Icons.format_quote_sharp,
          ),
        ),
        Container(
          alignment: AlignmentDirectional.bottomEnd,
          child: Text("Autor"),
        ),
      ],
    );
  }
}
