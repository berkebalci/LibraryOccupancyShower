class FieldModel {
  String bolumAdi;
  int doluKoltuk;
  int kapasite;

  FieldModel({
    required this.bolumAdi,
    required this.doluKoltuk,
    required this.kapasite,
  });
  factory FieldModel.fromJson(Map<String, dynamic> json) {
    return FieldModel(
      bolumAdi: json['bolumAdi'],
      doluKoltuk: json['doluKoltuk'],
      kapasite: json['kapasite'],
    );
  }
}
