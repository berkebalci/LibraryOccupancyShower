import 'package:flutter/material.dart';

void main() {
  runApp(Ayarlar());
}

class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE9DCD0),
        body: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 140,
              left: MediaQuery.of(context).size.width / 2-80,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF53715A)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(Size(100, 100)),
                ),
                child: const Text(
                  "TR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 140,
              left: MediaQuery.of(context).size.width / 2+50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 157, 91, 43)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(Size(100, 100)),
                ),
                child: const Text(
                  "ENG",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 320,
              left: MediaQuery.of(context).size.width / 3,
              child: const Text(
                "Ayarlar",
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  fontSize: 41,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 157, 91, 43),
                  fontFamily: 'RobotoMono',
                ),
              ),
            ),
            Positioned(
              top: 135,
              left: 10,
              child: SizedBox(
                width: MediaQuery.of(context).size.width-20,
                child: Divider(
                  color: Colors.white,
                  thickness: 6,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 -120,
              left: MediaQuery.of(context).size.width / 2 - 160,
              child: const Text(
                "Dil",
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  fontSize: 41,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF53715A),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


