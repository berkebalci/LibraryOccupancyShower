import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class KutuphaneModel {
  String bolumadi;
  int dolukoltuk;
  int kapasite;
  KutuphaneModel({
    required this.bolumadi,
    required this.dolukoltuk,
    required this.kapasite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bolumadi': bolumadi,
      'dolukoltuk': dolukoltuk,
      'kapasite': kapasite,
    };
  }

  factory KutuphaneModel.fromMap(Map<String, dynamic> map) {
    return KutuphaneModel(
      bolumadi: map['bolumadi'] as String,
      dolukoltuk: map['dolukoltuk'] as int,
      kapasite: map['kapasite'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory KutuphaneModel.fromJson(String source) => KutuphaneModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
