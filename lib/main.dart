import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/pages/anasayfa.dart';
import 'firebase_options.dart';
import 'services/firebaseIslemleri.dart';
//import 'package:flutter_application_1/Ayarlar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Solution for  binding has not yet been initialized error.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    
    home: Anasayfa()));
}

