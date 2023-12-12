import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<String>> kutuphaneleriListele() async {
  //
  List<String> kutuphaneler = [];
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('kutuphaneler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      {
        String kutuphaneAdi = doc.data()['kutuphaneAdi'];
        kutuphaneler.add(kutuphaneAdi);
      }
    }
    print(snapshot);
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
  }
  return kutuphaneler;
}

/*Future<List<String>> kutupaneDosyaYollariniListele() async {
  //Liste şeklinde document isimlerini listeliyor
  List<String> dosyaYolari = [];
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('kutuphaneler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      dosyaYolari.add(doc.id);
    }
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
  }
  return dosyaYolari;
}*/

Future<List<String>> bolumleriListele(String kutuphaneDosyaYolu) async {
  //Bölüm isimlerini Liste<String> şeklinde döndürüyor
  List<String> bolumler = [];
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('/kutuphaneler/' + kutuphaneDosyaYolu + '/bolumler')
        .get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      {
        String bolumAdi = doc.data()['bolumAdi'];
        bolumler.add(bolumAdi);
      }
    }
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
  }
  return bolumler;
}

Future<List<int>> doluKotluklariListele(String kutuphaneDosyaYolu) async {
  //Seçilen kütüphanedeki doluluk parametresinin String değeri List<int> olarak dönüyor

  List<int> doluKoltuklar = [];
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('/kutuphaneler/' + kutuphaneDosyaYolu + '/bolumler')
        .get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      {
        int bolumunDoluKoldugu = int.parse(doc.data()['doluKoltuk'].toString());
        doluKoltuklar.add(bolumunDoluKoldugu);
      }
    }
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
  }
  return doluKoltuklar;
}

Future<List<int>> kapasiteleriListele(String kutuphaneDosyaYolu) async {
  //Seçili kütüphanenin kapasitesini int şeklinde döndüren fonksiyon
  List<int> kapasite = [];
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('/kutuphaneler/' + kutuphaneDosyaYolu + '/bolumler')
        .get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      int bolumunKapasitesi = int.parse(doc.data()['kapasite'].toString());
      kapasite.add(bolumunKapasitesi);
    }
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
  }
  return kapasite;
}

Future<List<String>> kutuphaneKapasiteleriListele() async {
  List<String> dosyaYollari = await kutupaneDosyaYollariniListele();
  List<String> kapasiteListesi = [];
  int toplam;
  try {
    for (int i = 0; i < dosyaYollari.length; i++) {
      List<int> bolumKapasiteListesi =
          await kapasiteleriListele(dosyaYollari[i]);
      toplam = 0;
//TODO: Buradaki mantığı anla ve içiçe for döngüsünü kaldır
      for (int j = 0; j < bolumKapasiteListesi.length; j++) {
        toplam = toplam + bolumKapasiteListesi[j];
      }

      kapasiteListesi.add(toplam.toString());
    }

    return kapasiteListesi;
  } catch (e) {
    print("The error is : $e");
    throw Exception(e);
  }
}

Future<List<String>> kutuphaneDoluKoltuklariListele() async {
  List<String> dosyaYollari = await kutupaneDosyaYollariniListele();
  List<String> kapasiteListesi = [];
  int toplam;

  for (int i = 0; i < dosyaYollari.length; i++) {
    List<String> bolumKapasiteListesi =
        await doluKotluklariListele(dosyaYollari[i]);
    toplam = 0;

    for (int j = 0; j < bolumKapasiteListesi.length; j++) {
      toplam = toplam + int.parse(bolumKapasiteListesi[j]);
    }

    kapasiteListesi.add(toplam.toString());
  }

  return kapasiteListesi;
}
