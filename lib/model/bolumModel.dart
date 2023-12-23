class BolumModel {
  String bolumAdi;
  int doluKoltuk;
  int kapasite;
  double DolulukOrani;

  BolumModel(
      {required this.bolumAdi,
      required this.doluKoltuk,
      required this.kapasite,
      required this.DolulukOrani});
  factory BolumModel.fromMap(Map<String, dynamic> json) {
    return BolumModel(
        bolumAdi: json['bolumAdi'],
        doluKoltuk: json['doluKoltuk'],
        kapasite: json['kapasite'],
        DolulukOrani: json['doluKoltuk'] / json['kapasite']);
  }
}
