import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      locale: const Locale('pt', 'BR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  appBarDynamic() {
    return AppBar(
      title: Text(
        'Ajuda Diária!',
        style: GoogleFonts.urbanist(
          textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 29, 25, 51),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: 40.0,
                    bottom: 8.0,
                  ),
                  child: Text(
                    'Ajuda',
                    style: GoogleFonts.urbanist(
                        color: Color.fromARGB(255, 95, 192, 231),
                        fontSize: 64,
                        fontWeight: FontWeight.w200),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Color.fromARGB(255, 29, 25, 51),
                  alignment: AlignmentDirectional.bottomStart,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 40.0,
                    top: 8.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Diária',
                        style: GoogleFonts.outfit(
                          color: Color.fromARGB(255, 29, 25, 51),
                          fontSize: 64,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextButton(
                        //padding: EdgeInsets.only(bottom: 8.0),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'avançar',
                              style: GoogleFonts.urbanist(
                                color: Color.fromARGB(255, 29, 25, 51),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Color.fromARGB(255, 29, 25, 51),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  //color: Color.fromARGB(255, 52, 43, 94),
                  color: Color.fromARGB(255, 95, 192, 231),
                  alignment: AlignmentDirectional.topEnd,
                ),
              ],
            ),
            /*
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),*/
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
