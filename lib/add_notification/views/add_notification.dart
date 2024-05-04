import 'package:animate_do/animate_do.dart';
import 'package:elnoor_guide/add_notification/views/add_new_notification.dart';
import 'package:elnoor_guide/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notification_design.dart';

class AddNotification extends StatefulWidget {
  const AddNotification({super.key});

  @override
  State<AddNotification> createState() => _AddNotificationState();
}

class _AddNotificationState extends State<AddNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInDown(
            delay: Duration(milliseconds: 500),
            child: const Text(" الاشعارات")),
        centerTitle: true,
        actions: [
          FadeInRight(
            delay: Duration(milliseconds: 500),
            child: IconButton(
              onPressed: () {
                Get.to(() => const NewNotification());
              },
              icon: const Icon(Icons.add),
              color: TColor.black,
              iconSize: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return FadeInRight(
                  delay: Duration(milliseconds: 500),
                  curve: Curves.easeInSine,
                  child: NotificationDesign());
            }),
      ),
    );
  }
}
