import 'dart:math';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class FrasesInspiradoras extends StatefulWidget {
  const FrasesInspiradoras({super.key});

  @override
  State<FrasesInspiradoras> createState() => _FrasesInspiradorasState();
}

class _FrasesInspiradorasState extends State<FrasesInspiradoras> {
  List _items = [];
  var rng = Random();
  int rand = 0;

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/base/base.json');
    final data = await json.decode(response);
    print(data);
    setState(() {
      _items = data["frases"];
      rand = rng.nextInt(100);
    });
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
        color: Colors.yellowAccent[100],
        child: Column(
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
              child: Text(
                "$_items[2]",
                style: GoogleFonts.urbanist(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: const Icon(
                Icons.format_quote_sharp,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: Text(
                "Desconhecido",
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
    );
    ;
  }
}
