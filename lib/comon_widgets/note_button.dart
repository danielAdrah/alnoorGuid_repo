import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_note/views/add_note.dart';
import '../theme.dart';

class NoteButton extends StatelessWidget {
  const NoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(AddNote());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          decoration: BoxDecoration(
              color: TColor.primary, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Text(
                "إضافة ملاحظة",
                style: TextStyle(color: TColor.white),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.add,
                color: TColor.white,
              ),
            ],
          ),
        ));
  }
}
