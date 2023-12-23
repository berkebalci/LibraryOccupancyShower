import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/global.dart';
import 'package:flutter_application_1/model/bolumModel.dart';
import 'package:flutter_application_1/model/kutuphaneModel.dart';
import 'package:flutter_application_1/services/firebaseIslemleri.dart';
import 'ayarlar.dart';
import 'hakkinda.dart';
import 'kutuphanelerListesi.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9DCD0),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 300,
            left: MediaQuery.of(context).size.width / 10 + 35,
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
                onPressed: () async {
                  print("onpressed çalıştı");

                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return Center(
                        child: new CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    },
                  );
                  kutuphaneModelListesi$.value = await kutupaneModelOlustur();
                  print(
                      "toplamdolulukoranı : ${kutuphaneModelListesi$.value[1].toplamDolulukOrani})");
                  ;

                  for (int i = 0;
                      i < kutuphaneModelListesi$.value.length;
                      i++) {
                    await bolumModelOlustur(kutuphaneModelListesi$.value[i]);
                  }
                  Navigator.of(context, rootNavigator: true).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KutuphaneListesi()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 157, 91, 43),
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
            top: MediaQuery.of(context).size.height / 2 - 10,
            left: MediaQuery.of(context).size.width / 4 - 40,
            child: const Text(
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
            left: MediaQuery.of(context).size.width / 2 + 40,
            child: SizedBox(
              width: 116,
              height: 116,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ayarlar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 157, 91, 43),
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
            top: MediaQuery.of(context).size.height / 2 - 10,
            left: MediaQuery.of(context).size.width / 4 + 170,
            child: const Text(
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
            left: MediaQuery.of(context).size.width / 4 + 45,
            child: SizedBox(
              width: 116,
              height: 116,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hakkinda()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 157, 91, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: const SizedBox(
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
            child: const Text(
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
