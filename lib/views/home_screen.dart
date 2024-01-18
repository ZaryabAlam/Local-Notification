import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:localnotification/services/notification_services.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal.shade400,
          title: const Text("Local Notification")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter Local Notification"),
            ElevatedButton(
                onPressed: () {
                  NotificationServices().showNotification(
                      title: "Title Text", body: "Notification Body");
                },
                child: Text("Send"))
          ],
        ),
      ),
    );
  }
}
