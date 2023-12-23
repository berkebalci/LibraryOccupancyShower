import 'package:flutter_application_1/model/bolumModel.dart';
import 'package:flutter_application_1/model/kutuphaneModel.dart';
import 'package:rxdart/subjects.dart';
BehaviorSubject<List<KutuphaneModel>> kutuphaneModelListesi$ =
    BehaviorSubject.seeded([]);
