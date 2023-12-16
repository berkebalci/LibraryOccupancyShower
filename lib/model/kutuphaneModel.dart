// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_application_1/model/bolumModel.dart';

class KutuphaneModel {
  String kutuphaneAdi;
  List<BolumModel> bolumler;

  KutuphaneModel({
    required this.kutuphaneAdi,
    required this.bolumler,
  });

 

  factory KutuphaneModel.create(String KutuphaneAdi) {
    return KutuphaneModel(kutuphaneAdi: KutuphaneAdi, bolumler: []);
  }
}
