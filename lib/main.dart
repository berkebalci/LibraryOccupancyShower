import 'package:flutter/material.dart';

void main() {
  runApp(const Anasayfa());
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE9DCD0),
        body: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 2 -300,
              left: MediaQuery.of(context).size.width / 10+35,
              child: const Text(
                "Talas\nKütüphaneler",
                textAlign: TextAlign.center,
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
              top: MediaQuery.of(context).size.height / 2 - 140,
              left: MediaQuery.of(context).size.width / 4 - 50,
              child: SizedBox(
                width: 116,
                height: 116,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 157, 91, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book_sharp,
                        color: Colors.white,
                        size: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 -10,
              left: MediaQuery.of(context).size.width / 4 -40,
              child: Text(
                "Kütüphaneler",
                style: TextStyle(
                  color: Color.fromARGB(255, 157, 91, 43),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 140,
              left: MediaQuery.of(context).size.width / 2+ 40,
              child: SizedBox(
                width: 116,
                height: 116,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 157, 91, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.miscellaneous_services,
                        color: Colors.white,
                        size: 75,
                      )

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 -10,
              left: MediaQuery.of(context).size.width / 4 +170,
              child: Text(
                "Ayarlar",
                style: TextStyle(
                  color: Color.fromARGB(255, 157, 91, 43),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 + 40,
              left: MediaQuery.of(context).size.width / 4 +45,
              child: SizedBox(
                width: 116,
                height: 116,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 157, 91, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info_sharp,
                            color: Colors.white,
                            size: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 + 165,
              left: MediaQuery.of(context).size.width / 4 + 68,
              child: Text(
                "Hakkında",
                style: TextStyle(
                  color: Color.fromARGB(255, 157, 91, 43),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 + 360,
              left: MediaQuery.of(context).size.width / 2-70,
              child: Text(
                "Erciyes Üniversitesi 2023",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Colors.grey,
                  fontFamily: 'RobotoMono',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
