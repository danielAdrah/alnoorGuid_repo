import 'package:elnoor_guide/comon_widgets/note_button.dart';
import 'package:elnoor_guide/comon_widgets/chat_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme.dart';
import '../user_profile/view/user_profile_view.dart';

class ClientContact extends StatefulWidget {
  const ClientContact({super.key});

  @override
  State<ClientContact> createState() => _ClientContactState();
}

class _ClientContactState extends State<ClientContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "the name ",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "the number ",
                style: TextStyle(
                  color: TColor.black.withOpacity(0.4),
                  fontSize: 11,
                ),
              ),
              const Text(
                "hotel",
                style: TextStyle(color: TColor.primary, fontSize: 9),
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  RejectButton(),
                  const SizedBox(width: 20),
                  NoteButton(),
                ],
              )
            ],
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: () {
              Get.to(() => UserProfileView());
            },
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/img/bigAvatar.png"),
            ),
          ),
        ],
      ),
    );
  }
}
