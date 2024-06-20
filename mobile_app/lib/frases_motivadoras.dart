import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_app/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class FrasesMotivadoras extends StatelessWidget {
  const FrasesMotivadoras({super.key});

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
        ),
      ),
    );
  }
}
