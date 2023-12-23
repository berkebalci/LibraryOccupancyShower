import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE9DCD0),
      body: Stack(
        children: [
          const Align(
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
            top: MediaQuery.of(context).size.height / 2 - 370,
            left: MediaQuery.of(context).size.width / 34,
            child: const Expanded(
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
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 157, 91, 43),
                  fontFamily: 'RobotoMono',
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: const Divider(
                color: Colors.white,
                thickness: 7,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 280,
            left: MediaQuery.of(context).size.width / 2 - 70,
            child: const Text(
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
    );
  }
}
