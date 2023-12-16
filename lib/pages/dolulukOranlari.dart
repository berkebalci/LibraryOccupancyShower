import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/kutuphaneModel.dart';

class Ikinci extends StatelessWidget {
  KutuphaneModel selectedLibrary; //talasKutuphanesi,erciyesKutuphanesi
  Ikinci({super.key, required this.selectedLibrary});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          child: CustomScrollView(slivers: <Widget>[
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Image(
                  image: AssetImage("lib/assets/talasLib.jpeg"),
                ),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                ),
                const Text(
                  'Talas 7/24 Kütüphane',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF53715A),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                ),
                const Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Text(
                      'Doluluk Oranları',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF53715A),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                SizedBox(
                  width: 360,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sesli Çalışma Odası',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      10,
                      (index) => Container(
                          width: 30,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ))),
                ),
                const Padding(
                  padding: EdgeInsets.all(17.0),
                ),
                SizedBox(
                  width: 360,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sessiz Çalışma Odası',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      10,
                      (index) => Container(
                          width: 30,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ))),
                ),
                const Padding(
                  padding: EdgeInsets.all(17.0),
                ),
                SizedBox(
                  width: 360,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Akademik Çalışma Odası',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      10,
                      (index) => Container(
                          width: 30,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ))),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                const Text('Kütüphanenin Adresi',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF53715A))),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                ),
                const Text('Yenidoğan, 38280 Talas/Kayseri',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF53715A))),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                const Text('İletişim Numaraları',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF53715A))),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                ),
                const Text('(0352) 222 07 24',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF53715A))),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                const Text('Erciyes Üniversitesi 2023',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
              ],
            ))
      ])),
      backgroundColor: const Color(0xFFE9DCD0),
    );
  }
}
