import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/arquivos/turorial3.dart';

void main() {
  runApp(const Tutorial2());
}

class Tutorial2 extends StatelessWidget {
  const Tutorial2({super.key});

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
      home: const MyTutorial2Page(title: 'Flutter Demo Home Page'),
      locale: const Locale('pt', 'BR'),
    );
  }
}

class MyTutorial2Page extends StatefulWidget {
  const MyTutorial2Page({super.key, required this.title});

  final String title;

  @override
  State<MyTutorial2Page> createState() => _MyTutorial2PageState();
}

class _MyTutorial2PageState extends State<MyTutorial2Page> {
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
                  child: const Text(
                    'pular',
                    style: TextStyle(color: Color(0xff5fc0e7)),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 24.0, vertical: 0),
            color: const Color.fromARGB(255, 51, 43, 94),
            child: Image.asset('assets/images/model2.png'),
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
                      'Mensagens positivas diária',
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
                      'Inspire-se com o Mensagem Positiva Diária. Uma mensagem nova a cada dia para te ajudar a alcançar seus objetivos e ser mais feliz.',
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
                              builder: (context) => const Tutorial3()),
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
