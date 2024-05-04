import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../comon_widgets/client_contact.dart';
import '../../comon_widgets/custom_floating_button.dart';
import '../../comon_widgets/search_bar.dart';
import '../../theme.dart';

class ChooseClient extends StatefulWidget {
  const ChooseClient({super.key});

  @override
  State<ChooseClient> createState() => _ChooseClientState();
}

class _ChooseClientState extends State<ChooseClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: FadeInDown(
            delay: const Duration(milliseconds: 930), child: const Text("الحجاج")),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 30),
            FadeInLeft(
                delay: const Duration(milliseconds: 800), child: const CustomSearchBar()),
            const SizedBox(height: 30),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return FadeInRight(
                      delay: const Duration(milliseconds: 800),
                      child: const ClientContact());
                })),
          ],
        ),
      ),
    );
  }
}
