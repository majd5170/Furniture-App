import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/domain/models/loacl_notifaction_service.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // basic
            ListTile(
              onTap: () {
                LoaclNotifactionService.showBaasicNotification();
              },
              leading: Icon(Icons.notifications),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
            ),
          ],
        ),
      ),
    );
  }
}
