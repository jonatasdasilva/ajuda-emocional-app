import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/dashboard.dart';
import 'package:mobile_app/arquivos/turorial1.dart';

void main() {
  runApp(const Tutorial3());
}

class Tutorial3 extends StatelessWidget {
  const Tutorial3({super.key});

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
      home: const MyTutorial3Page(title: 'Flutter Demo Home Page'),
      locale: const Locale('pt', 'BR'),
    );
  }
}

class MyTutorial3Page extends StatefulWidget {
  const MyTutorial3Page({super.key, required this.title});

  final String title;

  @override
  State<MyTutorial3Page> createState() => _MyTutorial3PageState();
}

class _MyTutorial3PageState extends State<MyTutorial3Page> {
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
                Container(),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 24.0, vertical: 0),
            color: const Color.fromARGB(255, 51, 43, 94),
            child: Image.asset('assets/images/model3.png'),
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
                    child: const Text(
                      'Sua motivação diária',
                      style: TextStyle(
                        color: Color(0xff5fc0e7),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: const Text(
                      'Motive-se com uma mensagem nova a cada dia para te ajudar a estar cada dia mais confiante nos seus objetivos.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
                        );
                      },
                      child: Text(
                        'finalizar',
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

class Tutorial1 {
  const Tutorial1();
}
