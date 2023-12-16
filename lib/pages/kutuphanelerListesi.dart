import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/global.dart';
import 'package:flutter_application_1/model/kutuphaneModel.dart';
import 'package:flutter_application_1/services/firebaseIslemleri.dart';
import 'dolulukOranlari.dart';

class KutuphaneListesi extends StatefulWidget {
  @override
  State<KutuphaneListesi> createState() => _KutuphaneListesiState();
}

class _KutuphaneListesiState extends State<KutuphaneListesi> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          kutuphaneModelListesi$.value = [];
          await kutupaneModelOlustur();
          for (KutuphaneModel x in kutuphaneModelListesi$.value) {
            bolumleriListele(x);
          }
        },
        child: StreamBuilder<List<KutuphaneModel>>(
            stream: kutuphaneModelListesi$.stream, 
            builder: (context, snapshot) { //snapshot.data = [KutuphaneModel, KutuphaneModel]
              if (snapshot.hasData) {
                return Container(
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

                                SizedBox(
                                  height: 400,
                                  width: 400,
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            width: 350,
                                            height: 60,
                                            child: ElevatedButton(
                                              onPressed: () async {
                                                Navigator.push(
                                                    //TODO: Burası değiştirilecek
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Ikinci(
                                                              selectedLibrary:
                                                                  kutuphaneModelListesi$
                                                                          .value[
                                                                      index],
                                                            )));
                                              },
                                              child: Text(
                                                '${kutuphaneModelListesi$.value[index].kutuphaneAdi}',
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
                                            padding: EdgeInsets.all(15.0),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: List.generate(
                                                10,
                                                (index) => Container(
                                                    width: 30,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ))),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      );
                                    },
                                    itemCount: 2,
                                  ),
                                )
                                //Kütüphane Butonları başlangıç
                                ,
                                //Kütüphane Butonları Bölümü bitiş
                                const Padding(
                                  padding: EdgeInsets.all(100.0),
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
                    ));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
      backgroundColor: const Color(0xFFE9DCD0),
    );
  }
}
