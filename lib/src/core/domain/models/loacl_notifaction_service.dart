import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LoaclNotifactionService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static onTap(NotificationResponse notificationResponse) {}

  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  //  basic Notification
  static void showBaasicNotification() async {
    NotificationDetails details = NotificationDetails(
        android: AndroidNotificationDetails(
      'id 1',
      'basic noti',
      importance: Importance.max,
      priority: Priority.high,
    ));
    await flutterLocalNotificationsPlugin
        .show(0, 'Basic noti', ' body', details, payload: 'payload data');
  }

  //  basic repeated
  static void showRepeatedNotification() async {
    NotificationDetails details = NotificationDetails(
        android: AndroidNotificationDetails(
      'id 1',
      'basic noti',
      importance: Importance.max,
      priority: Priority.high,
    ));
    await flutterLocalNotificationsPlugin
        .periodicallyShow(0, 'repeated noti', ' body',
        RepeatInterval.everyMinute,
         details, payload: 'payload data');
  }
}
