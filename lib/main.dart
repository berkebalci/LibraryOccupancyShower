import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/pages/anasayfa.dart';
import 'firebase_options.dart';
import 'services/firebaseIslemleri.dart';
//import 'package:flutter_application_1/Ayarlar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Solution for  binding has not yet been initialized error.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    
    home: Anasayfa()));
}

/*class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE9DCD0),
        body: Stack(
          children: [
            const Positioned(
              top: 140,
              left: 30,
              child: Text(
                "Talas Kütüphaneler",
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
              top: 250,
              left: 50,
              child: SizedBox(
                width: 116,
                height: 116,
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 157, 91, 43),
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
                        size: 75,
                      ),
                      Text("Kütüphaneler",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 250,
              child: SizedBox(
                width: 116,
                height: 116,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 157, 91, 43),
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
                      ),
                      Text("Ayarlar", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 450,
              left: 150,
              child: SizedBox(
                width: 116,
                height: 116,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 157, 91, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_sharp,
                        color: Colors.white,
                        size: 75,
                      ),
                      Text("Hakkında", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
