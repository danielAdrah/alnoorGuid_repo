import 'package:animate_do/animate_do.dart';
import 'package:elnoor_guide/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveView extends StatefulWidget {
  const LiveView({super.key});

  @override
  State<LiveView> createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: FadeInDown(
            delay: Duration(milliseconds: 650), child: Text(" بث مباشر")),
        centerTitle: true,
        actions: [
          FadeInRight(
            delay: Duration(milliseconds: 500),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Image.asset(
                  "assets/img/white_arrowBack.png",
                  color: TColor.black,
                )),
          )
        ],
      ),
      body: Container(child: Text("N")),
    );
  }
}
