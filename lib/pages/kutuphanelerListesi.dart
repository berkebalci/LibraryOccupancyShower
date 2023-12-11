import 'package:flutter/material.dart';
import 'dolulukOranlari.dart';

class KutuphaneListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          alignment: Alignment.topCenter,
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
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
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
                            child: Text(
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
                        padding: EdgeInsets.all(210.0),
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
