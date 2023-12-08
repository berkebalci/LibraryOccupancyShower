import 'package:flutter/material.dart';
import 'DolulukOranlari.dart';

class KutuphaneListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 50.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Kütüphaneler Listesi',
                        style: TextStyle(
                          fontSize: 39,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9D5B2B),
                          shadows: [
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius: 4,
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      const SizedBox(
                        width: 360,
                        height: 20,
                        child: Divider(
                          color: Colors.white,
                          thickness: 7,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                      ),
                      Center(
                        child: SizedBox(
                          width: 350,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Ikinci()));
                            },
                            child: const Text(
                              'Talas 7/24 Kütüphane',
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
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
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
                        padding: EdgeInsets.all(230.0),
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
            ],
          )),
      backgroundColor: const Color(0xFFE9DCD0),
    );
  }
}
