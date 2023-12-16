// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_application_1/model/FieldModel.dart';

class BolumModel {
  List<FieldModel> fieldListesi;

  BolumModel({
    required this.fieldListesi,
  });

 

  factory BolumModel.fromJson(Map<String, dynamic> map) {
    return BolumModel(
      fieldListesi: [
        FieldModel.fromJson(map)]
    );
  }
}
