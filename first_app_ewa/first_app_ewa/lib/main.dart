import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:first_app_ewa/configuration_noti/config_noti.dart';
import 'package:first_app_ewa/firebase_options.dart';
import 'package:first_app_ewa/screens/category_screen.dart';
import 'package:first_app_ewa/screens/question_screen.dart';
import 'package:first_app_ewa/screens/score_screen.dart';
import 'package:first_app_ewa/screens/splash_screen.dart';
import 'package:flutter/material.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  CofigNoti().showNotification(message);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    CofigNoti configNoti = CofigNoti();
    configNoti.registerNotification();
    configNoti.configLocalNotification();
  });

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
