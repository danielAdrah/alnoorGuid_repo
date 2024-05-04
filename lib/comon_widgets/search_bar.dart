import 'package:flutter/material.dart';

import '../theme.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(color: TColor.black.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintTextDirection: TextDirection.rtl,
            hintText: "ابحث عن الحاج",
            prefixIcon: Icon(Icons.search, color: TColor.primary, size: 30),
          ),
        ),
      ),
    );
  }
}
