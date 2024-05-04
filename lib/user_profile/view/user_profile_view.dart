import 'package:animate_do/animate_do.dart';
import 'package:elnoor_guide/comon_widgets/primary_button.dart';
import 'package:elnoor_guide/user_profile/view/profile_tab_1.dart';
import 'package:elnoor_guide/user_profile/view/profile_tab_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../comon_widgets/custom_app_bar2.dart';
import '../../comon_widgets/profile_tab_button.dart';
import '../../theme.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  bool isTurn = true;
  // File? image;
  // final imagePicker = ImagePicker();
  // uploadImage() async {
  //   var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     setState(() {
  //       image = File(pickedImage.path);
  //     });
  //   } else {}
  // }
  // final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: media.width * 0.6,
                  decoration: const BoxDecoration(color: TColor.primary),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomAppBar2(),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 170,
              left: 5,
              right: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: TColor.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: media.width * 1.68,
                width: media.width * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      FadeInLeft(
                        delay: const Duration(milliseconds: 600),
                        child: Text(
                          "هنا سيكون الاسم",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: media.width * 0.05),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInRight(
                        delay: const Duration(milliseconds: 600),
                        child: Text(
                          "+963512218",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: media.width * 0.04),
                        ),
                      ),
                      const SizedBox(height: 8),
                      ZoomIn(
                        delay: const Duration(milliseconds: 600),
                        curve: Curves.linear,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 30),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Text(
                              "مفعل",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ZoomIn(
                          curve: Easing.standardAccelerate,
                          delay: const Duration(milliseconds: 600),
                          child: PrimaryButton(onTap: () {}, text: "دردشة")),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FadeInLeft(
                            delay: const Duration(milliseconds: 600),
                            child: ProfileTabButton(
                              title: "تفاصيل الرحلة",
                              isActive: !isTurn,
                              onpressed: () {
                                setState(() {
                                  isTurn = !isTurn;
                                });
                              },
                            ),
                          ),
                          FadeInRight(
                            delay: const Duration(milliseconds: 600),
                            child: ProfileTabButton(
                              title: " معلومات السكن",
                              isActive: isTurn,
                              onpressed: () {
                                setState(() {
                                  isTurn = !isTurn;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      if (isTurn)
                        FadeInUpBig(
                            delay: const Duration(milliseconds: 600),
                            child: const ProfileTab1()),
                      if (!isTurn)
                        FadeInUpBig(
                            delay: const Duration(milliseconds: 600),
                            child: const ProfileTab2()),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 130,
              child: ZoomIn(
                curve: Curves.linear,
                delay: const Duration(milliseconds: 600),
                child: const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage("assets/img/bigAvatar.png"),
                ),
              ),
            ),
            Positioned(
              top: 190,
              right: 131,
              child: InkWell(
                onTap: () {},
                child: ZoomIn(
                  delay: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  child: const CircleAvatar(
                    radius: 15,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: TColor.primary,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
