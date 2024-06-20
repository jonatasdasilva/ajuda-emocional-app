import 'dart:math';
import 'package:mobile_app/frases_inspiradoras.dart';
import 'package:mobile_app/frases_motivadoras.dart';

import 'biblia.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Dashboard());
}

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleOnFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleOnFactor;
    return max(1, min(val, maxTextScaleOnFactor));
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
      home: const MyDashboardPage(title: 'Dashboard'),
      locale: const Locale('pt', 'BR'),
    );
  }
}

class MyDashboardPage extends StatefulWidget {
  const MyDashboardPage({super.key, required this.title});

  final String title;

  @override
  State<MyDashboardPage> createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 43, 94),
      body: Column(
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 51, 43, 94),
            padding: const EdgeInsets.only(
                top: 32.0, left: 24.0, bottom: 16.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/images/logo.png'),
                Container(),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 51, 43, 94),
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    'Olá, o ajuda diária te impulsiona para melhorar e crescer a cada dia',
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text(
                      'O que desejas hoje?',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.extent(
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      maxCrossAxisExtent: 240,
                      children: [
                        /*GestureDetector(
                          onTap: () {
                            // handle on tap here
                            print('Biblia');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Biblia()),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 24.0,
                            ),
                            color: Colors.cyanAccent[200],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Um texto bíblico celestial',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.south_east,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // handle on tap here

                            print('filosofico');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 24.0,
                            ),
                            color: Colors.lightBlueAccent[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Um belo texto filosófico',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.south_east,
                                ),
                              ],
                            ),
                          ),
                        ),
                        */
                        GestureDetector(
                          onTap: () {
                            // handle on tap here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FrasesMotivadoras(),
                              ),
                            );
                            print("frases motivadoras");
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 24.0,
                            ),
                            color: Colors.yellowAccent[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Uma frase motivadora',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.south_east,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // handle on tap here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FrasesInspiradoras(),
                              ),
                            );
                            print("frases inspiradoras");
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 24.0,
                            ),
                            color: Colors.amberAccent[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Uma frase inspiradora',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.south_east,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // handle on tap here
                            print('poesia motivadora');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 24.0,
                            ),
                            color: Colors.greenAccent[200],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Uma poesia motivadora',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.south_east,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // handle on tap here
                            print('poesia inspiradora');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 24.0,
                            ),
                            color: Colors.tealAccent[200],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Uma poesia inspiradora',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.south_east,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
