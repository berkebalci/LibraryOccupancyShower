import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/global/global.dart';

import 'package:flutter_application_1/model/bolumModel.dart';
import 'package:flutter_application_1/model/kutuphaneModel.dart';

/*Future<List<String>> kutuphaneleriListele() async {
  //
  List<String> kutuphaneler = [];
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('kutuphaneler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      {
        print(doc.data()); //{kutuphaneadi: Erciyes Kütüphanesi }
        String kutuphaneAdi = doc.data()['kutuphaneAdi'];
        kutuphaneler.add(kutuphaneAdi);
      }
    }
    print(snapshot);
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
  }
  return kutuphaneler;
}*/

Future<List<KutuphaneModel>> kutupaneModelOlustur() async {
  //Liste şeklinde document isimlerini listeliyor
  List<KutuphaneModel> dosyaYolari = [];
  try {
    print("try bloguna girildi");
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('kutuphaneler').get();
    print("instance olustu");
    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      print("sj");
      dosyaYolari.add(
          KutuphaneModel.create(doc.id)); //{kutuphaneAdi:Erciyes,kutuphanesi}
    }
    return dosyaYolari;
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
    throw Error();
  }
}

Future<void> bolumModelOlustur(KutuphaneModel kutuphanemodel) async {
  //Bölüm isimlerini Liste<String> şeklinde döndürüyor

  try {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection(
            '/kutuphaneler/' + kutuphanemodel.kutuphaneAdi + '/bolumler')
        .get();

    print("snapshot.docs === ${snapshot.docs}");
    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      {
        print(doc
            .data()); //{"doluKoltuk":24,"bolumAdi":"AkademikKisim","kapasite":24}
        //String bolumAdi = doc.data()['bolumAdi'];

        kutuphanemodel.bolumler.add(BolumModel.fromMap(doc.data()));
        print("bolumler listesine eklendi");
      }
    }
    print("for döngüsü bitti");
    kutuphanemodel.calculateTotalOccupancy(); //Tüm Bölümlerin toplamını bulma
    print(kutuphanemodel.toplamDolulukOrani);
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
    throw Error();
  }
}

/*Future<Map?> doluKoltuklariListele(
  KutuphaneModel kutuphaneModel,
  String bolumismi,
) async {
  //Seçilen kütüphanedeki doluluk parametresinin String değeri Map olarak dönüyor

  //List<String> kutuphaneninBolumleri = await bolumleriListele(kutuphanemodel);
  ;
  try {
    DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection(
            '/kutuphaneler/' + kutuphaneModel.kutuphaneAdi + '/bolumler')
        .doc("$bolumismi")
        .get();
    if (snapshot.data() != null) {
      print(snapshot.data()); //{doluKoltuk:8, bolumAdi:sesliBolum,kapasite:24}
      print(snapshot.data().runtimeType); //Map<String,dynamic>

      print("If'den çıktı");
      Map<String, dynamic>? data =
          snapshot.data(); //{"dolukoltuk":11,"bolumadi","kapasite":24}
      return data;
    }
  } catch (e) {
    //birşeyler ters gitti uyarısı ver
    throw Error;
  }
  print("Dolu koltuk fonksiyonu bitti");
} */
  


/*Future<List<int>> kapasiteleriListele(String kutuphaneDosyaYolu) async {
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
}*/

/*Future<List<String>> kutuphaneKapasiteleriListele() async {
  List<String> dosyaYollari = await kutupaneDosyaYollariniListele();
  List<String> kapasiteListesi = [];
  int toplam;
  try {
    for (int i = 0; i < dosyaYollari.length; i++) {
      List<int> bolumKapasiteListesi =
          await kapasiteleriListele(dosyaYollari[i]);
      toplam = 0;

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
}*/

/*Future<List<String>> kutuphaneDoluKoltuklariListele() async {
  List<String> dosyaYollari = await kutupaneDosyaYollariniListele();
  List<String> kapasiteListesi = [];
  int toplam;

  for (int i = 0; i < dosyaYollari.length; i++) {
    List<int> bolumKapasiteListesi =
        await doluKoltuklariListele(dosyaYollari[i], "sesliBolum", "kapasite");
    toplam = 0;

    for (int j = 0; j < bolumKapasiteListesi.length; j++) {
      toplam = toplam + bolumKapasiteListesi[j];
    }

    kapasiteListesi.add(toplam.toString());
  }

  return kapasiteListesi;
}*/
