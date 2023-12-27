import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/kutuphaneModel.dart';

class Ikinci extends StatelessWidget {
  KutuphaneModel selectedLibrary; //talasKutuphanesi,erciyesKutuphanesi
  Ikinci({super.key, required this.selectedLibrary});

  Color paintRowContainers(int index) {
    if (index < 2) {
      return Colors.green;
    } else if (index >= 2 && index < 4) {
      return Colors.yellow;
    } else if (index >= 4 && index < 6) {
      return Colors.orange;
    } else if (index >= 6 && index < 8) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  int calculateRatio(double kutuphaneToplamDolulukOrani) {
    if (kutuphaneToplamDolulukOrani <= 0.3) {
      return 2;
    } else if (kutuphaneToplamDolulukOrani > 0.3 &&
        kutuphaneToplamDolulukOrani <= 0.6) {
      return 4;
    } else if (kutuphaneToplamDolulukOrani > 0.6 &&
        kutuphaneToplamDolulukOrani <= 0.9) {
      return 6;
    } else if (kutuphaneToplamDolulukOrani > 0.9 &&
        kutuphaneToplamDolulukOrani <= 1) {
      return 8;
    } else {
      return 0;
    }
  }

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
                Text(
                  selectedLibrary.kutuphaneAdi,
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
                  height: 480,
                  width: 400,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: selectedLibrary.bolumler.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            width: 350,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                print(selectedLibrary
                                    .bolumler[index].DolulukOrani);
                              },
                              child: Text(
                                '${selectedLibrary.bolumler[index].bolumAdi} ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "En az dolu",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "En fazla dolu",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  calculateRatio(selectedLibrary
                                      .bolumler[index].DolulukOrani),
                                  (index) => Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: paintRowContainers(index),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  8 -
                                      calculateRatio(selectedLibrary
                                          .bolumler[index].DolulukOrani),
                                  (index) => Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      SizedBox(width: 10), // Add space
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    },
                  ),
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
