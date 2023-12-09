import 'package:cloud_firestore/cloud_firestore.dart';


Future<List<String>> kutuphaneleriListele() async {
  List<String> kutuphaneler = [];
  
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('kutuphaneler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
   {
        String kutuphaneAdi = doc.data()['kutuphaneAdi'];
        kutuphaneler.add(kutuphaneAdi);
      }
    }
 
  return kutuphaneler;
}

Future<List<String>> kutupaneDosyaYollari() async {

  List<String> dosyaYolari = [];

  QuerySnapshot<Map<String, dynamic>> snapshot =
     await FirebaseFirestore.instance.collection('kutuphaneler').get();

  for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs)
    {
      dosyaYolari.add(doc.id);
    }


    return dosyaYolari;
}

Future<List<String>> bolumleriListele(String kutuphaneDosyaYolu) async {
  List<String> bolumler = [];

    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('/kutuphaneler/'+ kutuphaneDosyaYolu +'/bolumler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
   {
        String bolumAdi = doc.data()['bolumAdi'];
        bolumler.add(bolumAdi);
      }
    }
 
  return bolumler;
}

Future<List<String>> doluKotluklarListele(String kutuphaneDosyaYolu) async {
  List<String> doluKoltuklar = [];

    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('/kutuphaneler/'+ kutuphaneDosyaYolu +'/bolumler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
   {
        String bolumunDoluKoldugu = doc.data()['doluKoltuk'].toString();
        doluKoltuklar.add(bolumunDoluKoldugu);
      }
    }
 
  return doluKoltuklar;
}

Future<List<String>> kapasiteleriListele(String kutuphaneDosyaYolu) async {
  List<String> kapasite = [];

    QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('/kutuphaneler/'+ kutuphaneDosyaYolu +'/bolumler').get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
   {
        String bolumunKapasitesi = doc.data()['kapasite'].toString();
        kapasite.add(bolumunKapasitesi);
      }
    }
 
  return kapasite;
}


