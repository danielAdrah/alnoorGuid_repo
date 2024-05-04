import 'package:flutter/material.dart';

import '../theme.dart';

class RejectButton extends StatelessWidget {
  const RejectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          child: const Row(
            children: [
              Text(
                "دردشة",
                style: TextStyle(color: TColor.primary),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.message,
                color: TColor.primary,
              ),
            ],
          ),
        ));
  }
}
