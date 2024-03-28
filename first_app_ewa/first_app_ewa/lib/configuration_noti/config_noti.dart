import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class CofigNoti {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  registerNotification() {
    firebaseMessaging.requestPermission();
    firebaseMessaging.getToken().then((token) {
      //store token in local storage  => sharedPrefs.setToken(token!);

      print('Token is:$token');
    }).catchError((err) {});

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {}
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
      return;
    });
  }

  void configLocalNotification() {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    DarwinInitializationSettings initializationSettingsDarwin =
        const DarwinInitializationSettings();

    InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future? showNotification(RemoteMessage? message) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            Platform.isAndroid
                ? 'com.dfa.flutterchatdemo'
                : 'com.duytq.flutterchatdemo',
            'Flutter chat demo',
            importance: Importance.max,
            priority: Priority.high);

    if (Platform.isAndroid) {
      AndroidNotificationChannel channel = const AndroidNotificationChannel(
          'high_importance_channel', //id
          'High Importance Notification', //title
          importance: Importance.max);

      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
    }
    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
            categoryIdentifier: 'textCategory', presentSound: true);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
            alert: true, badge: true, sound: true);
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: darwinNotificationDetails);

    await flutterLocalNotificationsPlugin.show(0, message!.notification!.title,
        message.notification!.body, platformChannelSpecifics);
  }
}
