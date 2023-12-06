import 'package:flutter/material.dart';

void main() {
  runApp(Hakkinda());
}

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE9DCD0),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bu uygulama Erciyes Üniversitesi bilgisayar mühendisliği öğrencileri tarafından Talas Belediyesi adında geliştirilmiştir. Tüm hakları saklıdır. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF53715A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 10,
              child: Text(
                "Uygulama Hakkında",
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
              top: 132,
              left: 10,
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                child: Divider(
                  color: Colors.white,
                  thickness: 6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}













