import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localnotification/services/notification_services.dart';
import 'package:localnotification/views/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 NotificationServices().initNotification();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Local Notification',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade400),
          useMaterial3: true,
        ),
        home: HomeScreen());
  }
}
