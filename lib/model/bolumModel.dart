class BolumModel {
  String bolumAdi;
  int doluKoltuk;
  int kapasite;

  BolumModel({
    required this.bolumAdi,
    required this.doluKoltuk,
    required this.kapasite,
  });
  factory BolumModel.fromJson(Map<String, dynamic> json) {
    return BolumModel(
      bolumAdi: json['bolumAdi'],
      doluKoltuk: json['doluKoltuk'],
      kapasite: json['kapasite'],
    );
  }
}
