// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_application_1/model/bolumModel.dart';

class KutuphaneModel {
  String kutuphaneAdi;
  List<BolumModel> bolumler;
  int toplamDolulukOrani;

  KutuphaneModel({
    required this.kutuphaneAdi,
    required this.bolumler,
    required this.toplamDolulukOrani
  });

  factory KutuphaneModel.create(String KutuphaneAdi) {
    return KutuphaneModel(kutuphaneAdi: KutuphaneAdi, bolumler: [],
    toplamDolulukOrani: 0);
  }
}
